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
        [switch]
        $ShowUserName,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $ShowComputerName,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $ShowTime,

        [Parameter(Position = 0, Mandatory = $false)]
        [string]
        $TimeFormat,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $ShowArchitecture,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $ShowGitBranch,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $ShowPath,

        [Parameter(Position = 0, Mandatory = $false)]
        [switch]
        $PathOnNewline
    )

    try 
    {
        throw 'Not yet implemented, sorry.'
    }
    catch 
    {
        throw
    }
}
