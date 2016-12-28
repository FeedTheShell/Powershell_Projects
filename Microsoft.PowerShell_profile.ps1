function SaveHistory($filename) {
$History = history
$name = "C:\temp\" + $filename + ".txt"
$history | out-file $name
}

function SaveLastCommand() {
$id = history | measure  | select Count
$history = history($id.count)
$historyname =  "C:\temp\GoodCommands.csv"
$history | Export-Csv $historyname
}

function Get-GoodCommands()
{
	$imp = Import-Csv "C:\temp\GoodCommands.csv"
	$imp
}

