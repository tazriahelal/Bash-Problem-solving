cat cus.txt

echo "Choose the field name "
read n

head -1 cus.txt > op.txt

if [ $n = "Name" ]
then
	tail -n +2 cus.txt | sort -k 2 >> op.txt

cat op.txt

elif [ $n = "Email" ]	
then 
	tail -n +2 cus.txt | sort -k 3 >> op.txt
	
cat op.txt
elif [ $n = "ID" ]	
then 
	tail -n +2 cus.txt | sort -k 1 >> op.txt
	
cat op.txt
	
else
	echo "Error"
fi	
	
	
rm -f op.txt