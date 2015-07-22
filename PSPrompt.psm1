

$promptOptions = [psobject]@{
    ShowUserName = $true
    ShowComputerName = $true
    ShowTime = $true
    TimeFormat = 'HHmm'
    ShowArchitecture = $true
    ShowGitBranch = $true
    ShowPath = $true
    PathOnNewLine = $true
    ShowAdmin = $true
}

$promptColors = [psobject]@{
    TextForeground = 'Gray'
    TextBackground = 'Black'
    UserName = 'Magenta'
    ComputerName = 'Green'
    ComputerDelim = 'White'
    Time = 'White'
    TimeDelim = 'Green'
    Architecture = 'Red'
    GitBranch = 'Yellow'
    GitBranchDelim = 'Yellow'
    Path = 'Cyan'
    Admin = 'Red'
    NonAdmin = 'White'
}

$global:PsPrompt = [psobject]@{
    Options = $promptOptions
    Colors = $promptColors
}

Export-ModuleMember -Function Write-Prompt
Export-ModuleMember -Function Set-PromptOption
New-Alias -Name prompt -Value Write-Prompt
Export-ModuleMember -Alias prompt