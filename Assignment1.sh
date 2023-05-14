echo ¨Enter at least 10 words:¨
read word
# Set space as the delimiter
IFS=' '

len=`echo $word | wc -w`
echo ¨Length is $len¨
if [ $len -gt 9 ]
then 
echo ¨Enter searching word:¨
read srch
# To make the string into lowercase
txt1="${word,,}"
txt2="${srch,,}"
shopt -s nocasematch
if [[ "$word" == *"$srch"* ]]; then
  echo "Your searching word is there."
 else 
echo ¨Word is not in your input text!¨
fi
# To delete the last character from string. like dot, question symbol etc
txt1="${word::-1}"
txt2="${srch::-1}"

printf "\n"

IFS=' '

# To make the array from the string
read -a strarr <<< "$word"
read -a arr2 <<< "$srch"

count=0
sum=0

  for i in "${strarr[@],,}"
  do
      for j in "${arr2[@],,}"
          do
            if [ $i == $j ]
          then
            count=$((count+1))
            sum=$((sum+count))
          fi
      done
          count=0
  done
echo Total occurance  -- $sum
else 
echo "Error! Type at least 10 Words."
fi
