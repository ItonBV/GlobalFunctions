<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    Example of how to use this cmdlet
.EXAMPLE
    Another example of how to use this cmdlet
#>
function Select-ShortName {
    [CmdletBinding()]
    [OutputType([string])]
    param(
        [Parameter(Mandatory = $true)]
        [string]
        $LongName
    )

    begin {
    }

    process {
        if ($LongName.Length -gt 6) {
            $ShortName = $LongName.Substring(0, 5)
        }
        else {
            $ShortName = $LongName
        }
        $ShortName
    }

    end {
    }
}
