#step 1 mkdir 'Looping Mechanism'
#step 2 cd 'Looping Mechanism'

# create 10 files
<#
for($i = 0 ; $i -lt 10 ; $i++) {
$filename = 'Ganesh' + $i + '.txt' 
New-Item -Path $filename -ItemType File
}
#>

# Create 10 folders
<#
for($i = 0 ; $i -lt 10 ; $i++) {
$foldername = 'newfolder' + $i 
New-Item -Path $foldername -ItemType Directory
}
#>

# create 10 folders inside the folder created in step 2
# cd newfolder0
<#
for($i = 0; $i -lt 10 ; $i++) {
for($j = 0 ; $j -lt 10 ; $j++){
$fold = 'newfolder' + $i + '\'+ 'fold' + $j
New-Item -Path $fold -ItemType Directory
}
}
#>


#Create 10 files in the 10 folders created in step 3
<#
for($i = 0 ;$i -lt 10 ; $i++){
for($k = 0 ; $k -lt 10 ; $k++){
for($g = 0 ; $g -lt 10 ; $g++){
$a = 'files' + $g + '.txt'
$c = 'newfolder' + $i + '\' + 'fold' + $k + '\' + $a
New-Item -Path $c -ItemType File
}
}
}
 
#>

# copy 10 files to each 10 folders
# cd..
<#
for($i = 0; $i -lt 10 ; $i++){
for($j = 0; $j -lt 10 ; $j++){
$shift = 'Ganesh' + $j + '.txt'
$to = 'newfolder' + $i
Copy-Item -Path $shift -Destination $to
}
}
#>

# Remove all files from folders
<#
for($i = 0 ; $i -lt 10 ; $i++){
for($j = 0 ; $j -lt 10 ; $j++){
for($k = 0 ; $k -lt 10 ; $k++){
$del = 'newfolder' + $i + '\' + 'fold' + $j + '\' + 'files' + $k + '.txt'
Remove-Item $del
}
}
}
#>