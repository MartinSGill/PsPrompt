

$promptOptions = [psobject]@{
    UserName = $true
    ComputerName = $true
    Time = $true
    TimeFormat = 'HHmm'
    Architecture = $true
    GitBranch = $true
    Path = $true
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

Export-ModuleMember -Function prompt
Export-ModuleMember -Function Write-Prompt
