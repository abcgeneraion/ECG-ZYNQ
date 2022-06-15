#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = E:/vivado_tools_2019.2/Vitis_workspace/system_wrapper/export/system_wrapper/system_wrapper.xpfm
SYS_CONFIG = system_wrapper
DOMAINS = standalone_domain
BIF_PATH = C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia_system/Debug/system.bif

BITSTREAM_PATH = C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia/_ide/bitstream/system_wrapper.bit
SD_FILES = --elf C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia/Debug/ecg_Arrhythmia.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 51804 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


