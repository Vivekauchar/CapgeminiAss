#step 1 mkdir 'Looping Mechanism'
#step 2 cd 'Looping Mechanism'

# create 10 files
<#
$i = 0
While($i -lt 10) {
$filename = 'Ganesh' + $i + '.txt' 
New-Item -Path $filename -ItemType File
$i = $i + 1
}

#>
# Create 10 folders
<#
$i = 0
while($i -lt 10) {
$foldername = 'newfolder' + $i 
New-Item -Path $foldername -ItemType Directory
$i = $i + 1
}
#>

# create 10 folders inside the folder created in step 2
# cd newfolder0
<#
$i = 0

while($i -lt 10) {
$j = 0
while($j -lt 10){
$fold = 'newfolder' + $i + '\fold' + $j
New-Item -Path $fold -ItemType Directory
$j = $j + 1
}
$i = $i + 1
}
#>


#Create 10 files in the 10 folders created in step 3
<#
$i = 0

while($i -lt 10){
$k = 0
while($k -lt 10){
$g = 0
while($g -lt 10 ){
$a = 'files' + $g + '.txt'
$c = 'newfolder' + $i + '\' + 'fold' + $k + '\' + $a
New-Item -Path $c -ItemType File
$g = $g + 1
}
$k = $k + 1
}
$i = $i + 1
}
 #>


# copy 10 files to each 10 folders
# cd..
<#
$i = 0
while($i -lt 10){
$j = 0
while($j -lt 10){
$shift = 'Ganesh' + $j + '.txt'
$to = 'newfolder' + $i
Copy-Item -Path $shift -Destination $to
$j = $j + 1
}
$i = $i + 1
}

#>

# Remove all files from folders
<#

$i = 0 
while($i -lt 10){
$j = 0
while($j -lt 10){
$k = 0
while($k -lt 10){

$del = 'newfolder' + $i + '\' + 'fold' + $j + '\' + 'files' + $k + '.txt'
Remove-Item $del
$k = $k + 1
}
$j = $j + 1
}
$i = $i + 1
}
#>