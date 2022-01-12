# Task is a few steps. First step create part code it will find files with mask. Second step create part code. It will change text in files.

$path = "C:\Users\alexandr.kozlov\Desktop\files"

$mask = @("*.txt","*.xml","*.json","*.html", "*.config")

$valueold = "Deny"
$valuenew = "DENY"

#find file
foreach($M in $mask)
{
    #replace
    Get-ChildItem  -Path $path  -Filter $M | foreach {
        $file = Get-Content -Path $_.FullName
        $NewFile = $file -replace $valueold, $valuenew
        $NewFile | Set-Content -Path $_.FullName
    }
}


