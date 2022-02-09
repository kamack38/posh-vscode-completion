. $PSScriptRoot\..\utils.ps1

if (-not $commandValues) {
	$commandValues = [ordered] @{ }
}

$commandValues['--disable-extension'] = {
	param ([string] $WordToComplete)

	$scriptNames = Get-VSCExtensions | Where-Object {
		$_ -like "$WordToComplete*"
	}

	return $scriptNames
}
