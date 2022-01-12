# Task is a few steps. First step create part code it will find files with mask. Second step create part code. It will change text in files.

$path = "C:\Users\alexandr.kozlov\Desktop\files"

$mask = @("*.txt", "*.doc")


#find file
foreach($M in $mask)
{
    Get-ChildItem  -Path $path  -Filter $M
}


