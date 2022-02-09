function Get-Completions([string] $WordToComplete, [string] $LastCommand) {
	if (-not $commands) {
		. $PSScriptRoot\..\commands.ps1
	}
	if (-not $commandValues) {
		. $PSScriptRoot\..\values.ps1
	}
	if (-not $subCommands) {
		. $PSScriptRoot\..\subCommands.ps1
	}

	$searchBlock = { $_ -like "$WordToComplete*" }
	$completions = @()
	# if ($commandValues.Contains($LastCommand)) {
	# 	$completions += Invoke-Command -ScriptBlock $commandValues[$LastCommand] -ArgumentList @($WordToComplete) | ForEach-Object {
	# 		[System.Management.Automation.CompletionResult]::new($_, $_, 'DynamicKeyword', $_)
	# 	}
	# }
	if ($commands.Contains($LastCommand) -or @('code', 'code.cmd', 'code.exe').Contains($LastCommand)) {
		$completions += $commands | Where-Object $searchBlock | ForEach-Object {
			[System.Management.Automation.CompletionResult]::new($_, $_, 'Command', $_)
		}
	}

	# # Command's values
	# if ($commandValues[$Command]) {
	# 	$completions += Invoke-Command -ScriptBlock $commandValues[$Command] -ArgumentList @($WordToComplete) | ForEach-Object {
	# 		[System.Management.Automation.CompletionResult]::new($_, $_, 'DynamicKeyword', $_)
	# 	}
	# }

	# # Sub-commands
	# if ($subCommands[$Command]) {
	# 	$completions += $subCommands[$Command].Keys | Where-Object $searchBlock | ForEach-Object {
	# 		[System.Management.Automation.CompletionResult]::new($_, $_, 'Command', $_)
	# 	}
	# }

	return $completions
}
