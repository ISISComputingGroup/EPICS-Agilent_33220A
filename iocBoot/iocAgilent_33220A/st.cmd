#!../../bin/windows-x64/Agilent_33220A

## You may have to change Agilent_33220A to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))AGILENT_33220A"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Agilent_33220A.dbd"
Agilent_33220A_registerRecordDeviceDriver pdbbase

lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_33220AApp/protocol/Agilent_33220A.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")
#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_33220AApp/protocol/Agilent_33220A.xml", "", 6)

## Load record instances
dbLoadRecords("$(TOP)/db/Agilent_33220A.db","P=$(IOCNAME):")
dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit