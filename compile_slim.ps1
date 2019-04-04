$files = Get-ChildItem "C:\Users\LexCa\Documents\alexcassady_online\slim"
echo "Start"

ForEach ($f in $files)
{
	$name = $f.BaseName
	slimrb ".\slim\${name}.slim" > "${name}.html"
	echo "Did it work?"
	echo $f.BaseName
}

Read-Host "Enter to quit"