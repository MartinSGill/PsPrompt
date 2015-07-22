<#
    .SYNOPSIS
    A brief description of the function.

    .DESCRIPTION
    A detailed description of the function.

    .EXAMPLE
    PS C:\> 

    .EXAMPLE
    PS C:\> 

    .OUTPUTS
    None

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
