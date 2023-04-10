$Server = "Server Name"
$DBName = "FE7AutomationDB"
$query = "Select Name from USERS"
 
Invoke-Sqlcmd -ServerInstance $Server -Database $DBName -Query $query