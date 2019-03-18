tot=0
cuenta=0
for litros in $(cat /home/sergio/precipitaciones.txt);do
    tot=$((tot+litros))
    cuenta=$((cuenta+1))
done
mediaP=$((tot/cuenta))
echo "La media de todos los dias es $mediaP"