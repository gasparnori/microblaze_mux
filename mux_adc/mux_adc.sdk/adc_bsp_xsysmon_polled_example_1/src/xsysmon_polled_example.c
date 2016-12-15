

#include "xsysmon.h"
#include "xparameters.h"
#include "xstatus.h"

#define SYSMON_DEVICE_ID 	XPAR_SYSMON_0_DEVICE_ID

int SysMonPolledExample(u16 SysMonDeviceId, int *Temp);

static XSysMon SysMonInst;

#ifndef TESTAPP_GEN
/****************************************************************************/
/**
*
* Main function that invokes the polled example in this file.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note		None.
*
*****************************************************************************/
int main(void)
{

	int Status;
	int Temp;

	/*
	 * Run the SysMonitor polled example, specify the Device ID that is
	 * generated in xparameters.h .
	 */
	Status = SysMonPolledExample(SYSMON_DEVICE_ID, &Temp);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
#endif /* TESTAPP_GEN */


int SysMonPolledExample(u16 SysMonDeviceId, int *Temp)
{
	int Status;
	volatile u32 Value;
	XSysMon_Config *ConfigPtr;
	u16 TempData;
	u16 VccauxData;
	XSysMon *SysMonInstPtr = &SysMonInst;


	/*
	 * Initialize the SysMon driver.
	 */
	ConfigPtr = XSysMon_LookupConfig(SysMonDeviceId);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	XSysMon_CfgInitialize(SysMonInstPtr, ConfigPtr,
				ConfigPtr->BaseAddress);

	/*
	 * Self Test the System Monitor/ADC device
	 */
	Status = XSysMon_SelfTest(SysMonInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Disable the Channel Sequencer before configuring the Sequence
	 * registers.
	 */
	XSysMon_SetSequencerMode(SysMonInstPtr, XSM_SEQ_MODE_SAFE);


	/*
	 * Setup the Averaging to be done for the channels in the
	 * Configuration 0 register as 16 samples:
	 */
	XSysMon_SetAvg(SysMonInstPtr, XSM_AVG_16_SAMPLES);

	/*
	 * Setup the Sequence register for 1st Auxiliary channel
	 * Setting is:
	 *	- Add acquisition time by 6 ADCCLK cycles.
	 *	- Bipolar Mode
	 *
	 * Setup the Sequence register for 16th Auxiliary channel
	 * Setting is:
	 *	- Add acquisition time by 6 ADCCLK cycles.
	 *	- Unipolar Mode
	 */
	Status = XSysMon_SetSeqInputMode(SysMonInstPtr, XSM_SEQ_CH_AUX00);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XSysMon_SetSeqAcqTime(SysMonInstPtr, XSM_SEQ_CH_AUX15 |
						XSM_SEQ_CH_AUX00);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Enable the averaging on the following channels in the Sequencer
	 * registers:
	 * 	- On-chip Temperature
	 * 	- On-chip VCCAUX supply sensor
	 * 	- 1st Auxiliary Channel
	 * 	- 16th Auxiliary Channel
	 */
	Status =  XSysMon_SetSeqAvgEnables(SysMonInstPtr, XSM_SEQ_CH_TEMP |
						XSM_SEQ_CH_VCCAUX |
						XSM_SEQ_CH_AUX00 |
						XSM_SEQ_CH_AUX15);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the following channels in the Sequencer registers:
	 * 	- On-chip Temperature
	 * 	- On-chip VCCAUX supply sensor
	 * 	- 1st Auxiliary Channel
	 * 	- 16th Auxiliary Channel
	 */
	Status =  XSysMon_SetSeqChEnables(SysMonInstPtr, XSM_SEQ_CH_TEMP |
						XSM_SEQ_CH_VCCAUX |
						XSM_SEQ_CH_AUX00 |
						XSM_SEQ_CH_AUX15);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Set the ADCCLK frequency equal to 1/32 of System clock for the System
	 * Monitor/ADC in the Configuration Register 2.
	 */
	XSysMon_SetAdcClkDivisor(SysMonInstPtr, 32);

	/*
	 * Enable the Channel Sequencer in continuous sequencer cycling mode.
	 */
	XSysMon_SetSequencerMode(SysMonInstPtr, XSM_SEQ_MODE_CONTINPASS);

	/*
	 * Wait till the End of Sequence occurs
	 */
	XSysMon_GetStatus(SysMonInstPtr); /* Clear the old status */
	while ((XSysMon_GetStatus(SysMonInstPtr) & XSM_SR_EOS_MASK) !=
			XSM_SR_EOS_MASK);

	/*
	 * Disable all the alarms in the Configuration Register 1
	 */
	XSysMon_SetAlarmEnables(SysMonInstPtr, 0x0);


	/*
	 * Read the ADC converted Data from the data registers for on-chip
	 * temperature and on-chip VCCAUX
	 */
	TempData = XSysMon_GetAdcData(SysMonInstPtr, XSM_CH_TEMP);
	VccauxData = XSysMon_GetAdcData(SysMonInstPtr, XSM_CH_VCCAUX);

	/*
	 * Convert the ADC data into temperature
	 */
	*Temp = XSysMon_RawToTemperature(TempData);

	/*
	 * Set up Alarm threshold registers for
	 * On-chip Temperature High limit
	 * On-chip Temperature Low limit
	 * VCCAUX High limit
	 * VCCAUX Low limit
	 */
	XSysMon_SetAlarmThreshold(SysMonInstPtr, XSM_ATR_TEMP_UPPER,
						TempData - 0x007F);
	XSysMon_SetAlarmThreshold(SysMonInstPtr, XSM_ATR_TEMP_LOWER,
						TempData - 0x007F);
	XSysMon_SetAlarmThreshold(SysMonInstPtr, XSM_ATR_VCCAUX_UPPER,
						VccauxData - 0x007F);
	XSysMon_SetAlarmThreshold(SysMonInstPtr, XSM_ATR_VCCAUX_LOWER,
						VccauxData + 0x007F);

	/*
	 * Enable Alarm 0 for on-chip temperature and Alarm 2 for on-chip
	 * VCCAUX in the Configuration Register 1.
	 */
	XSysMon_SetAlarmEnables(SysMonInstPtr, (XSM_CFR1_ALM_VCCAUX_MASK |
						XSM_CFR1_ALM_TEMP_MASK));

	/*
	 * Enable the Channel Sequencer in continuous cycling mode.
	 */
	XSysMon_SetSequencerMode(SysMonInstPtr, XSM_SEQ_MODE_CONTINPASS);

	/*
	 * Read the current value of on-chip Temperature.
	 */
	Value = XSysMon_GetAdcData(SysMonInstPtr, XSM_CH_TEMP);

	/*
	 * Read the Maximum value of on-chip Temperature.
	 */
	Value = XSysMon_GetMinMaxMeasurement(SysMonInstPtr, XSM_MAX_TEMP);

	/*
	 * Read the Minimum value of on-chip Temperature.
	 */
	Value = XSysMon_GetMinMaxMeasurement(SysMonInstPtr, XSM_MIN_TEMP);

	/*
	 * Check if alarm for on-chip temperature is set.
	 */
	Value = XSysMon_GetAlarmOutputStatus(SysMonInstPtr) & XSM_AOR_TEMP_MASK;
	if (Value) {
		/*
		 * Alarm for on-chip temperature is set.
		 * The required processing should be put here.
		 */
	}

	/*
	 * Read the current value of on-chip VCCAUX.
	 */
	Value = XSysMon_GetAdcData(SysMonInstPtr, XSM_CH_VCCAUX);

	/*
	 * Read the Maximum value of on-chip VCCAUX.
	 */
	Value = XSysMon_GetMinMaxMeasurement(SysMonInstPtr, XSM_MAX_VCCAUX);

	/*
	 * Read the Minimum value of on-chip VCCAUX.
	 */
	Value = XSysMon_GetMinMaxMeasurement(SysMonInstPtr, XSM_MIN_VCCAUX);

	/*
	 * Check if alarm for on-chip VCCAUX is set.
	 */
	Value = XSysMon_GetAlarmOutputStatus(SysMonInstPtr) &
			XSM_AOR_VCCAUX_MASK;
	if (Value) {
		/*
		 * Alarm for on-chip VCCAUX is set.
		 * The required processing should be put here.
		 */
	}

	return XST_SUCCESS;
}
