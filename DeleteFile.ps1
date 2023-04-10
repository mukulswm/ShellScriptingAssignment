$files=Get-ChildItem "D:\Backup\*.bak"
$date = (Get-Date).AddDays(-7)
if ($files.CreationTime -gt $date) {
        $files.Delete()
}

