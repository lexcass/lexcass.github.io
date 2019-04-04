$files = Get-ChildItem "C:\Users\LexCa\Documents\lexcass.github.io\slim"
echo "Start"

ForEach ($f in $files)
{
	$name = $f.BaseName
	slimrb ".\slim\${name}.slim" > "${name}.html"
	echo $f.BaseName
}

Read-Host "Enter to quit"