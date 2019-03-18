
x=3
i=0

nom = 'cat nombres.txt | wc-l'
for directorio in $(cat nombres.txt);do
   mkdir /home/$directorio
    for i in 'seq 1 $1';do
	mkdir /home/${directorio}/personal$i       
    done
done