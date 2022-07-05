# How to Create Subfolders, Move Files and Archive [PowerShell]
This code snippet automates subfolder creation, moving files and archival unsing Powershell script.

Summary:
This code segment aims to achieve the below scenario.

![image](https://user-images.githubusercontent.com/82449271/177392641-938d989a-0298-4a40-aa06-18bed5a7e7d0.png)


The folder path listing is as below. As it is depicted, the root folder is script_test_logs, where all the logs reside. Inside that folder, there are 02 subfolders (i.e. subfolder_1, subfolder_2) which consists of separate log files.



Below are the steps we need to achieve during the archival process.

 - Firstly, inside each subfolder, we need to create a new subfolder.
 - Then, we need to move the logs older than 30 days to the newly created subfolder.
 - Compress the logs files inside the subfolder.
 - Keep only the archived file and remove the logs to free up space.
 
 For more code explanation please visit: https://bit.ly/powershell_logs_archival
