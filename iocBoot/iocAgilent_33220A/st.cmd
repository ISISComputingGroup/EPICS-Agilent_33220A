#!../../bin/windows-x64/Agilent_33220A

## You may have to change Agilent_33220A to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Agilent_33220A.dbd"
Agilent_33220A_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=dpk62Host")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=dpk62Host"
