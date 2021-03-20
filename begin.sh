for i in {1..1};
do
echo "Let's Begin"
while read title;
do
cp default.txt script.sh
echo $title 
sed -i "s/ayylmao/"$title"/g" script.sh
sleep 5
bash script.sh
done
done < channels.txt;


