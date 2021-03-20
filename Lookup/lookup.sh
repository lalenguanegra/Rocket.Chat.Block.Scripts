echo "Enter a Username"
read name
cp default.txt id.txt
cp username.sh username.txt
sed -i "s/REPLACE/"$name"/g" username.txt
bash username.txt >> results.txt
sleep 5
grep -oP '(?<=id":")[^"]*' results.txt | tr -d "\"" > result.txt
file="result.txt"
fname=$(cat "$file") 
sed -i "s/REPLACE/"$fname"/g" id.txt
cp 'id.txt' '../default.txt'
