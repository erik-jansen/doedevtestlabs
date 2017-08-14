param([string]$var1='',[string]$var2='')

New-Item c:\scripts -type directory
New-Item c:\scripts\new_file.txt -type file -value "var1=$var1 and var2=$var2"