START=$(date +%N)
fnr="r.txt"
pwd="pwd.txt"
#создаем из потока рандом значений файл r.txt состоящий из цифр и букв
cat /dev/urandom | tr -dc "A-Za-z0-9" | fold -w 50 | head -n 10 > $fnr
#grep цифры и буквы в нижнем регистре и запись в файл pwd.txt
#затем grep буквы с верхним регистром и беру 1 строчку
echo "Your password:"
grep "[a-z](?=\d).{10}" $fnr -P -o > $pwd
grep "\p{Lu}" $pwd -P -m 1
#удаление временных файлов
rm $fnr $pwd -f
END=$(date +%N)
DIFF=$(( $END - $START ))
echo "It took $DIFF nanoseconds"
