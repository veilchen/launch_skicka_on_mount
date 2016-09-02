-- USB Sticks, HDD
property YOUR_STORAGE_ID : "Volume UUID: 17005F9D-0000-3E4C-9B1F-E4D0000D7870"
-- SD Cards
-- property YOUR_SD_SERIAL : "Serial Number: 220007015"

set listOfExternalDisks to (do shell script "system_profiler  SPCardReaderDataType SPUSBDataType") as text

-----------------------------------
--    Detect Mounted Media
-----------------------------------
if listOfExternalDisks contains YOUR_STORAGE_ID then
  
  my processBackUp()
  
else
  do shell script "/PATH/TO/terminal-notifier -message \"No process done on this volume.\" -title \"Volume Mounted\""
  
end if

--    USB Stick

on processBackUp()
  do shell script "/PATH/TO/terminal-notifier -message \"YOUR_LOCAL_DATA: start to Backup..\" -title \"Dev BackUp\""
  do shell script "/PATH/TO/skicka upload /PATH/TO/YOUR_LOCAL_DATA /PATH_TO_YOUR_GOOGLE_DRIVE_DIRECTORY > ~/log/backuplog_`date +%Y%m%d%H%M%S`.log"
  do shell script "/PATH/TO/terminal-notifier -message \"BackUp of Microscopy is Done\" -title \"Dev BackUp\""
  
  
end processMalbec
