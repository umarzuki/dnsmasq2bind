input=input.txt
temp=temp.csv
out=out.zone
for i in $(tr -s '[:blank:]' ',' < $input)
do
echo $i >> $temp
done
awk -F, '{print $3". IN A "$1" "$2"."}' $temp > $out
rm -f $temp
