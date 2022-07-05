$Daysback = "-30"
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
$Root_path = 'D:\script_test_logs\'
foreach ($file in Get-ChildItem $Root_path) {

    $Path = $file.FullName
    $Backup = New-Item -ItemType directory -Path ($Path+"\$(($CurrentDate).ToString('dd-MM-yyyy'))")

    $Backup_Path = $Backup.FullName
    Get-ChildItem -Path $Path\*.log -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete} | Move-Item -Destination $Backup_Path
    cd $Backup_Path
    Compress-Archive -Path .\*.* -DestinationPath .\$(($CurrentDate).ToString('dd-MM-yyyy')).zip
    Remove-Item .\*.log
}
