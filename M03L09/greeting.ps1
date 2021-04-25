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
    [Parameter(Position=1,Mandatory=$true)][string]$Name,
    [Parameter(Position=2,Mandatory=$true)][int]$Age
)


function PrintGreeting() {
    $Data = @{
        Name = $Name
        Age = $Age
    }
    Write-Verbose "This is verbose and only shows up when using the -Verbose parameter"
    Write-Debug "This is a DEBUG message and only shows up when using the -Debug parameter"
    Write-Output "Hello $($Data.Name)"
    Write-Output "My age is $($Data.Age)"
}



# Start of Code
$responses = @(
    "Welcome to Gretting.PS1 were I say hello to you",
    "Welcome to the Sys Admin School Greeting Script",
    "Welcome to Become a PowerShell Ninja Greeting Script",
    "This is not the script you are looking for",
    "Welcome to the world may I help you?"
)

PrintGreeting