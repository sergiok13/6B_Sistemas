Numdias=1
diaSemana=1
for litros in $(cat precipitaciones.txt);do
    if [ $litros -eq 0 ]; then
	case $diaSemana in 
	    1)
		dia=Lunes
		;;
	    2)
		dia=Martes
		;;
	    3)
		dia=Miercoles
		;;
	    4)
		dia=Jueves
		;;
	    5)
		dia=Viernes
		;;
	    6)
		dia=Sabado
		;;
	    7)
		dia=Domingo
		;;
	esac
	echo "dia ${Numdias}: $dia"
        fi
    diaSemana=$((diaSemana+1))
    Numdias=$((Numdias+1))
    if [ $diaSemana -gt 7 ]; then
        diaSemana=$((diaSemana-7))
    fi
done