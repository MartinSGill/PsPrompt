<#
    .SYNOPSIS
    Set Colors for prompt elements.

    .DESCRIPTION
    Use this to control the color of elements displyed by
    the prompt.

    If you want to ensure your prompt looks the same every
    time you start PowerShell call this cmdlet in your
    $profile right after importing this module.
#>

function Set-PromptColor
{
    [CmdletBinding()]
    [OutputType()]
    param(
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $TextForeground,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $TextBackground,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $UserName,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $ComputerName,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $ComputerDelim,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $Time,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $TimeDelim,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $Architecture,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $GitBranch,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $GitBranchDelim,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $Path,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $Admin,
        
        [Parameter(Mandatory = $false)]
        [ConsoleColor]
        $NonAdmin
    )
    
    try 
    {
        ForEach ($param in $PSBoundParameters.Keys)
        {
            $value = $PSBoundParameters[$param]
            Write-Verbose "Setting '$param' to '$value'"
            $PsPrompt.Colors[$param] = $value
        }
    }
    catch 
    {
        throw
    }
}
