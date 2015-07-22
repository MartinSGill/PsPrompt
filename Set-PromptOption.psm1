<#
    .SYNOPSIS
    Set options to control the way the prompt is displayed.

    .DESCRIPTION
    Use this to control what elements of the prompt are 
    displayed.

    If you want to ensure your prompt looks the same every
    time you start PowerShell call this cmdlet in your
    $profile right after importing this module.
#>

function Set-PromptOption
{
    [CmdletBinding()]
    [OutputType()]
    param(
        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowUserName,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowComputerName,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowTime,

        [Parameter(Position = 0, Mandatory = $false)]
        [string]
        $TimeFormat,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowArchitecture,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowGitBranch,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $ShowPath,

        [Parameter(Position = 0, Mandatory = $false)]
        [boolean]
        $PathOnNewline
    )
    
    try 
    {
        ForEach ($param in $PSBoundParameters.Keys)
        {
            $value = $PSBoundParameters[$param]
            Write-Verbose "Setting '$param' to '$value'"
            $PsPrompt.Options[$param] = $value
        }
    }
    catch 
    {
        throw
    }
}
