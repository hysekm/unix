#!/bin/sh
if [ "$1" == "--normal" ]
then
for arg in "$@"
do
echo "$arg"
done
elif [ "$1" == "--reverse" ]
then
for (( i=$#;i>0;i-- ))
do
echo "${!i}"
done
elif [ "$1" == "--subst" ]
then
vyraz="$2"
text="$3"
shift 3
for arg in "$@"; do
echo "${arg//$vyraz/$text}"
done
elif [ $1 == "--len" ]
then
pr="${#1}"
shift
for arg in "$@"
do
pr="${pr} ${#arg}"
done
echo $pr
elif [ $1 == "--help" ]
then
echo "Pouziti: ./uloha02.sh [--typ|--help] [promenne]
	--normal	skript vypise vsechny argumenty (vcetne --normal), kazdy arugment na jeden radek
	--reverse	skript vypise argumenty v opacnem poradi, nez jsou na vstupu, kazdy na jeden radek
	--subst		druhy je nejaky retezec A a treti retezec B, skript v kazdom argumentu vymeni vsechny vyskyty A na B a vypise je, kazdy na jeden radek
	--len		skript vypise na jeden radek delky vsech argumentu, oddeleny mezerami
	--help		vypise návod na pouziti tohoto programu"
fi
exit 0
