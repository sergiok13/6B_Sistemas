contador=0
pwd1= 'pwd'
cd $1
pwd2='pwd'
if [ $pwd1 = $pwd2 ];then
    echo "El directorio no existe"
else
    for i in $(ls $1);do
	contador=$((contador+1))
done
if [ $contador -eq 0 ];then
   echo "No se encuentran fichero .txt en $1"
else
    rm $1/*.txt
    echo "Se han eliminado $contador ficheros"
fi
fi