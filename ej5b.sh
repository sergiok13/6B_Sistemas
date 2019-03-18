numeroLinux=0
numeroWindows=0
numProcesosLinux=0
numProcesosWindows=0
cuentaLinea=1
for i in $(cat listado.txt | awk '{print $2}');do
    procesos="cat listado.txt" | awk '{print $3}' | head -$cuentaLinea


    if [ $i = "Linux" ]; then
	numeroLinux=$((numLinux+1))
	numProcesosLinux=$((numProcesosLinux+procesos))
    else
	numeroWindows=$((numeroWindows+1))
	numProcesosWindows=$((numProcesosWindows+procesos))
    fi
    cuentaLinea=$((cuentaLinea+1))
    done
    echo "Linux -> $numeroLinux $numProcesosLinux"
    echo "Windows -> $numeroWindows $numProcesosWindows"