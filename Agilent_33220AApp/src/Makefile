TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Agilent_33220A
# Agilent_33220A.dbd will be created and installed
DBD += Agilent_33220A.dbd

# Agilent_33220A.dbd will be made up from these files:
Agilent_33220A_DBD += base.dbd
Agilent_33220A_DBD += lvDCOM.dbd

# Include dbd files from all support applications:
#Agilent_33220A_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Agilent_33220A_LIBS += xxx
Agilent_33220A_LIBS +=  lvDCOMSupport asyn autosave
Agilent_33220A_SYS_LIBS_WIN32 += msxml2

# Agilent_33220A_registerRecordDeviceDriver.cpp derives from Agilent_33220A.dbd
Agilent_33220A_SRCS += Agilent_33220A_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Agilent_33220A_SRCS_DEFAULT += Agilent_33220AMain.cpp
Agilent_33220A_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Agilent_33220A_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Agilent_33220A_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
