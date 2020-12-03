#!/bin/bash 
#AUTOR: Adolfo Tun Dzul             MATRICULA: 170300124
#Ejercicios resueltos de HackerRank.com

############################################################################################
#1) Let's Echo                                                                             #
############################################################################################
#Solution: 
echo "HELLO"

############################################################################################
#2) A Personalized Echo                                                                    #
############################################################################################
#Solution: 
read name
echo "Welcome $name"

############################################################################################
#3) Looping with Numbers                                                                   #
############################################################################################
#Solution: 
for contador in {1..50}
do
    echo $contador
done

############################################################################################
#4) Looping and Skipping                                                                   #
############################################################################################
#Solution:
for contador in {1..99..2}
do
    echo $contador 
done

############################################################################################
#5) The World of Numbers                                                                   #
############################################################################################
#Solution:
read X
read Y

if [[ $X -ge -100 ]] && [[ $X -le 100 ]] && [[ $Y -ge -100 ]] && [[ $Y -le 100 ]] && [[ $Y -ne 0 ]]
then
    echo $(( X + Y ))
    echo $(( X - Y ))
    echo $(( X * Y ))
    echo $(( X / Y ))
else
    echo "Números fuera de rango"
fi

############################################################################################
#6) Comparing Numbers                                                                      #
############################################################################################
#Solution:
read X
read Y

if [[ $X -gt $Y ]]
then    
    echo "X is greater than Y"
elif [[ $X -eq $Y ]]
then
    echo "X is equal to Y"
else
    echo "X is less than Y"
fi

############################################################################################
#7) Getting started with conditionals                                                      #
############################################################################################
#Solution:
read character

if [[ $character = 'y' ]] || [[ $character = 'Y' ]]
then
    echo "YES"
elif [[ $character = 'n' ]] || [[ $character = 'N' ]]
then 
    echo "NO"
else
    echo "INCORRECT"
fi

############################################################################################
#8) More on Conditionals                                                                   #
############################################################################################
#Solution:
read X
read Y
read Z

if [ $(($X + $Y)) -eq $(($Z * 2)) ] 
then
    echo "EQUILATERAL"
elif [ $X -eq $Y ] || [ $X -eq $Z ] || [ $Y -eq $Z ] 
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

############################################################################################
#9) Arithmetic Operations                                                                  #
############################################################################################
#Solution:
read num
echo $num | bc -l | xargs printf "%.3f"

############################################################################################
#10) Compute the Average                                                                   #
############################################################################################
read tamano
sum=0

for contador in $(seq 1 $tamano)
do 
    read number
    sum=$(( $sum + $number ))
done

echo "$sum / $tamano" | bc -l | xargs printf "%.3f"

############################################################################################
#11) Cut #1                                                                                #
############################################################################################
#Solution:
while read character
do
    echo $character |cut -c 3
done

############################################################################################
#12) Cut #2                                                                                #
############################################################################################
#Solution:
while read character
do 
    echo $character | cut -c 2,7
done

############################################################################################
#13) Cut #3                                                                                #
############################################################################################
#Solution:
while read character
do 
    echo $character | cut -c 2-7
done

############################################################################################
#14) Cut #4                                                                                #
############################################################################################
#Solution:
while read linea
do 
    echo $linea | cut -c 1-4
done

############################################################################################
#15) Cut #5                                                                                #
############################################################################################
#Solution:
cut -f -3

############################################################################################
#16) Cut #6                                                                                #
############################################################################################
#Solution:
cut -c 13-

############################################################################################
#17) Cut #7                                                                                #
############################################################################################
#Solution:
cut -d " " -f 4

############################################################################################
#18) Cut #8                                                                                #
############################################################################################
#Solution:
cut -d " " -f 1-3

############################################################################################
#19) Cut #9                                                                                #
############################################################################################
#Solution:
cut -f 2-

############################################################################################
#20) Head of a Text File #1                                                                #
############################################################################################
#Solution:
head -n 20

############################################################################################
#21) Head of a Text File #2                                                                #
############################################################################################
#Solution:
head -n 1 -c 20

############################################################################################
#22) Middle of a Text File                                                                 #
############################################################################################
#Solution:
head -n 22 | tail -n 11

############################################################################################
#23) Tail of a Text File #1                                                                #
############################################################################################
#Solution:
tail -n 20

############################################################################################
#24) Tail of a Text File #2                                                                #
############################################################################################
#Solution:
tail  -c -20

############################################################################################
#25) 'Tr' Command #1                                                                       #
############################################################################################
#Solution:
tr "()" "[]"

############################################################################################
#26) 'Tr' Command #2                                                                       #
############################################################################################
#Solution:
tr -d "a-z"

############################################################################################
#27) 'Tr' Command #3                                                                       #
############################################################################################
#Solution:
tr -s " "

############################################################################################
#28) Sort Command #1                                                                       #
############################################################################################
#Solution:
sort

############################################################################################
#29) Sort Command #2                                                                       #
############################################################################################
#Solution:
sort -r

############################################################################################
#30) Sort Command #3                                                                       #
############################################################################################
#Solution:
sort -n

############################################################################################
#31) Sort Command #4                                                                       #
############################################################################################
#Solution:
sort -n -r

############################################################################################
#32) Sort Command #5                                                                       #
############################################################################################
#Solution:
sort -t $'\t' -k 2 -r -n

############################################################################################
#33) Sort Command #6                                                                       #
############################################################################################
#Solution:
sort -n -t $'\t' -k 2

############################################################################################
#34) Sort Command #7                                                                       #
############################################################################################
#Solution:
sort -t '|' -k 2 -n -r

############################################################################################
#35) 'Uniq' Command #1                                                                     #
############################################################################################
#Solution:
uniq

############################################################################################
#36) 'Uniq' Command #2                                                                     #
############################################################################################
#Solution:
uniq -c | cut -b 7-

############################################################################################
#37) 'Uniq' Command #3                                                                     #
############################################################################################
#Solution:
uniq -c -i | cut -c 7-

############################################################################################
#38) 'Uniq' Command #4                                                                     #
############################################################################################
#Solution:
uniq -u

############################################################################################
#39) Paste - 1                                                                             #
############################################################################################
#Solution:
Paste -s -d ';'

############################################################################################
#40) Paste - 2                                                                             #
############################################################################################
#Solution:
paste -d ';' - - -

############################################################################################
#41) Paste - 3                                                                             #
############################################################################################
#Solution:
paste -s -d '\t'

############################################################################################
#42) Paste - 4                                                                             #
############################################################################################
#Solution:
paste -s -d "\t\t\n"

############################################################################################
#43) Read in an Array                                                                      #
############################################################################################
#Solution:
i=0
while read pais
do
    paises[$((i++))]=$pais
done

echo "${paises[*]}"

############################################################################################
#44) Slice an Array                                                                        #
############################################################################################
#Solution:
i=0
while read pais
do
    paises[$((i++))]=$pais
done

echo "${paises[*]:3:5}"

############################################################################################
#45) Filter an Array with Patterns                                                         #
############################################################################################
#Solution:
i=0
while read pais
do
    paises[$((i++))]=$pais
done

echo ${paises[@]/*[aA]*/}

############################################################################################
#46) Concatenate an array with itsel                                                       #
############################################################################################
#Solution:
let i=0
while read pais || [ -n "$pais" ]
do
    paises[(( i++ ))]=$pais
done

paises2=("${paises[@]}" "${paises[@]}" "${paises[@]}")

echo ${paises2[@]}

############################################################################################
#47) Display an element of an array                                                        #
############################################################################################
#Solution:
i=0
while read linea || [ -n "$linea" ]
do
    arr[$((i++))]=$linea
done

echo "${arr[3]}"
############################################################################################
#48) Count the number of elements in an Array                                              #
############################################################################################
#Solution:
wc -l

############################################################################################
#49) Remove the First Capital Letter from Each Element                                     #
############################################################################################
#Solution:
arr=($(cat))

for i in "${arr[@]}"
do
    echo -n .${i:1}" "
done

############################################################################################
#50) 'Grep' - A                                                                            #
############################################################################################
#Solution:
grep -iw  "the\|that\|then\|those"

############################################################################################
#51) 'Grep' - B                                                                            #
############################################################################################
#Solution:
grep '\([0-9]\) *\1'

############################################################################################
#52) 'Sed' command #1                                                                      #
############################################################################################
#Solution:
sed 's/the /this /'

############################################################################################
#53) 'Sed' command #2                                                                      #
############################################################################################
#Solution:
sed 's/thy/your/ig'

############################################################################################
#54) 'Sed' command #3                                                                      #
############################################################################################
#Solution:
sed 's:thy:{&}:ig'

############################################################################################
#55) 'Sed' command #4                                                                      #
############################################################################################
#Solution:
sed -r 's/[0-9]{4} /**** /g'

############################################################################################
#56) 'Sed' command #5                                                                      #
############################################################################################
#Solution:
sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1 /g'

############################################################################################
#57) 'Awk' - 1                                                                             #
############################################################################################
#Solution:
awk '{if (NF < 4){print "Not all scores are available for "$1}}'

############################################################################################
#58) 'Awk' - 2                                                                             #
############################################################################################
#Solution:
awk '{print $1,":", ($2<50||$3<50||$4<50) ? "Fail" : "Pass"}'

############################################################################################
#59) 'Awk' - 3                                                                             #
############################################################################################
#Solution:
awk '{avg=($2+$3+$4)/3; print $0, ":", (avg<50)?"FAIL":(avg<80)?"B":"A"}'

############################################################################################
#60) 'Awk' - 4                                                                             #
############################################################################################
#Solution:
awk '{
    if ( NR % 2 == 1 )
        printf "%s;", $0
    else
        printf "%s\n", $0  
}'

############################################################################################
#61) 'Grep' #1 - Difficulty Medium                                                         #
############################################################################################
#Solution:
grep '\bthe\b'

############################################################################################
#62) 'Grep' #2 - Difficulty Medium                                                         #
############################################################################################
#Solution:
grep -iw "the"

############################################################################################
#63) 'Grep' #3 - Difficulty Medium                                                         #
############################################################################################
#Solution:
grep -viw 'that'

############################################################################################
#64) Lonely Integer - Bash!                                                                #
############################################################################################
#Solution:
read
arr=($(cat))
arr=${arr[*]}
echo $((${arr// /^}))

############################################################################################
#65) Functions and Fractals - Recursive Trees - Bash!                                      #
############################################################################################
#Solution:
declare -A matrix
num_rows=63
num_columns=100

for ((i=0;i<num_rows;i++)) do
    for ((j=0;j<num_columns;j++)) do
        matrix[$i,$j]='_'
    done
done

fill_branch() {
    if [ $4 -gt 0 ]; then
        matrix[$3,$1]='1'
        matrix[$3,$2]='1'
        fill_branch $(($1 - 1)) $(($2 + 1)) $(($3 - 1)) $(($4 - 1))
    fi
}

recursive_trees() {
    if [ $1 -gt 0 ]; then
        local len=$(($4 - $2))

        for ((i=$4;i>$len;i--))
        do
            matrix[$i,$3]='1'
        done

        fill_branch $(($3 - 1)) $(($3 + 1)) $len $2

        recursive_trees $(($1 - 1)) $(($2 / 2)) $(($3 - $2)) $(($4 - $2 * 2))
        recursive_trees $(($1 - 1)) $(($2 / 2)) $(($3 + $2)) $(($4 - $2 * 2))
    fi
}

read n

recursive_trees $n 16 49 62

for ((i=0;i<num_rows;i++)) do
    for ((j=0;j<num_columns;j++)) do
        printf ${matrix[$i,$j]}
    done
    printf "\n"
done