function Compare-CommandElement($a, $b) {
	try {
		return (
			([string]::IsNullOrEmpty($a) -and [string]::IsNullOrEmpty($b)) -or
			($a -eq $b)
		)
	}
	catch {
		return $a -eq $b
	}
}

function Get-VSCExtensions {
	begin {
		$ErrorActionPreference = 'SilentlyContinue'
	}

	process {
		$response = (code --list-extensions)

		return $response
	}
}

function Get-NodeAvailableVersions {
	begin {
		$ErrorActionPreference = 'SilentlyContinue'
	}

	process {
		$response = nvm ls available

		$versions = ($response | Select-String -Pattern "\d{1,2}.\d{1,2}.\d{1,2}" -AllMatches).Matches.Value

		return $versions | Sort-Object -Descending
	}
}