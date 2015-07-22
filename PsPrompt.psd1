﻿#
# Module manifest for module 'PsPrompt'
#
# Generated by: Martin Gill
#
# Generated on: 31/01/2014
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PsPrompt.psm1'

# Version number of this module.
ModuleVersion = '0.4'

# ID used to uniquely identify this module
GUID = '41ad8aaf-ff7e-42be-8c8e-3bc89cc15857'

# Author of this module
Author = 'Martin Gill'

# Company or vendor of this module
CompanyName = ''

# Copyright statement for this module
Copyright = '(C) 2014-2015 Martin Gill'

# Description of the functionality provided by this module
# Description = ''

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = '4.5'

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @('')

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @(
            'Set-PromptOption.psm1',
            'Set-PromptColor.psm1',
            'Write-Prompt.psm1'
        )

# Functions to export from this module
# FunctionsToExport = '*'

# Cmdlets to export from this module
# CmdletsToExport = '*'

# Variables to export from this module
# VariablesToExport = ''

# Aliases to export from this module
# AliasesToExport = 'prompt'

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = @(
                'Set-PromptOption.psm1',
                'Set-PromptColor.psm1',
                'Write-Prompt.psm1'
)

# Private data to pass to the module specified in RootModule/ModuleToProcess
# PrivateData = ''

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
#DefaultCommandPrefix = 'Prompt'

}
