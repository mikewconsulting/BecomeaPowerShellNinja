<# 
.SYNOPSIS 
Greeting script for Becoming a PowerShell Ninja

.DESCRIPTION 
This script is a greeting script to help teach proper script formatting and use of comments in scripts 

.PARAMETER Name 
Please add a name so you can be greeted

.EXAMPLE C:\PS> greet.ps1 -Name “Mike”

.NOTES 
Author: Mike Walton 
Date: April 12th 2021 
#>

# Params
## Easy way
# Param ($Name)

## Better way
Param (
    [Parameter(Position=1,Mandatory=$true)][string]$Name
)

function PrintGreeting() {
    Write-Verbose "This is verbose and only shows up when using the -Verbose parameter"
    # Write-Error "This is an error!"
    Write-Debug "This is a DEBUG message and only shows up when using the -Debug parameter"
    Write-Output "Hello $Name"
}

$global:myage = 36

# Start of Code
PrintGreeting