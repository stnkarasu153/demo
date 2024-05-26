$ab=$(date -UFormat "%d%m%y")
$fname="C:\Users\stnkarasu\desktop\backup\backuppy.$ab.txt"
$files=$(get-childitem -path . -filter "*.py" -r |select fullname)
$files
foreach ($file in $files){
echo $file.fullname |tee-object -filepath $fname -append
echo "=============================================================" | tee-object -filepath $fname -append
get-content $file.fullname |tee-object $fname -append
echo " " |tee-object -filepath $fname -append
}