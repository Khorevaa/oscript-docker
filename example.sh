mkdir -p ./scripts
echo 'Сообщить("Привет OScript")' > ./scripts/my-script.os
SCRIPTS=`sh -c pwd`/scripts
echo $SCRIPTS

docker run -v $SCRIPTS:/scripts --rm silverbulleters/vanessa-oscript my-script.os
