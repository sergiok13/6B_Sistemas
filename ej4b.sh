pares=0
impares=0
for num in $(cat numeros.txt);do
    if [ 'expr $num % 2' -eq 0 ]; then
	numpares[$pares]=$num
	pares=$((pares+1))
    else 
	numimpares[$impares]=$num
	impares=$((impares+1))
    fi
done
echo "Numero pares: "
for item in ${numpares[*]};do
    echo "$item"
done
echo "Hay ${pares} numeros que son pares"
echo ""
echo "Numeros impares: "
for item in ${numimpares[*]};do
    echo "$item"
done
echo "Hay ${impares} numeros que son impares"