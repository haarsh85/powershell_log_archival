# How to Create Subfolders, Move Files and Archive [PowerShell]
This code snippet helps to Create Subfolders, Move Files and Archive

Summary:
This code segment aims to achieve the below scenario.

The folder path listing is as below. As it is depicted, the root folder is script_test_logs, where all the logs reside. Inside that folder, there are 02 subfolders (i.e. subfolder_1, subfolder_2) which consists of separate log files.

\---script_test_logs
    +---subfolder_1
    |       logfile_1.log
    |       logfile_2.log
    |       logfile_3.log
    |       logfile_4.log
    |       logfile_5.log
    |       
    \---subfolder_2
            logfile_10.log
            logfile_6.log
            logfile_7.log
            logfile_8.log
            logfile_9.log

Below are the steps we need to achieve during the archival process.

 - Firstly, inside each subfolder, we need to create a new subfolder.
 - Then, we need to move the logs older than 30 days to the newly created subfolder.
 - Compress the logs files inside the subfolder.
 - Keep only the archived file and remove the logs to free up space.
 
 For more code explanation please visit: https://bit.ly/powershell_logs_archival
