#step 1 mkdir 'Looping Mechanism'
#step 2 cd 'Looping Mechanism'

# create 10 files
<#
$i = 0
Do{
$filename = 'Ganesh' + $i + '.txt' 
New-Item -Path $filename -ItemType File
$i = $i + 1
}While($i -lt 10) 

#>
# Create 10 folders
<#
$i = 0
Do{
$foldername = 'newfolder' + $i 
New-Item -Path $foldername -ItemType Directory
$i = $i + 1
}while($i -lt 10) 
#>

# create 10 folders inside the folder created in step 2
# cd newfolder0
<#
$i = 0

Do{
$j = 0
Do{
$fold = 'newfolder' + $i + '\fold' + $j
New-Item -Path $fold -ItemType Directory
$j = $j + 1
}while($j -lt 10)
$i = $i + 1
}while($i -lt 10) 
#>


#Create 10 files in the 10 folders created in step 3
<#
$i = 0

Do{
$k = 0
Do{
$g = 0
Do{
$a = 'files' + $g + '.txt'
$c = 'newfolder' + $i + '\' + 'fold' + $k + '\' + $a
New-Item -Path $c -ItemType File
$g = $g + 1
}while($g -lt 10 )
$k = $k + 1
}while($k -lt 10)
$i = $i + 1
}while($i -lt 10)
 #>


# copy 10 files to each 10 folders
# cd..
<#
$i = 0
Do{
$j = 0
Do{
$shift = 'Ganesh' + $j + '.txt'
$to = 'newfolder' + $i
Copy-Item -Path $shift -Destination $to
$j = $j + 1
}while($j -lt 10)
$i = $i + 1
}while($i -lt 10)

#>

# Remove all files from folders

<#
$i = 0 
Do{
$j = 0
Do{
$k = 0
Do{

$del = 'newfolder' + $i + '\' + 'fold' + $j + '\' + 'files' + $k + '.txt'
Remove-Item $del
$k = $k + 1
}while($k -lt 10)
$j = $j + 1
}while($j -lt 10)
$i = $i + 1
}while($i -lt 10)
#>