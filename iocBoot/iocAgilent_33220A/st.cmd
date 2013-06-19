#!../../bin/windows-x64/Agilent_33220A

## You may have to change Agilent_33220A to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Agilent_33220A.dbd"
Agilent_33220A_registerRecordDeviceDriver pdbbase

lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_33220AApp/protocol/Agilent_33220A.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")
#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_33220AApp/protocol/Agilent_33220A.xml", "", 6)

## Load record instances
dbLoadRecords("$(TOP)/db/Agilent_33220A.db","P=AG33220A:")

cd ${TOP}/iocBoot/${IOC}
iocInit