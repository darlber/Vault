# Ejercicio Ruleta.

```bash
#!/bin/bash

saldo=100

echo "=== Juego de la ruleta ==="
PS3="Elige una opción: "
while [ $saldo -gt 0 ]; do

    echo "-------------------"
    echo "Saldo actual: ${saldo}€"

    echo "Introduce tu apuesta:"
    read bet

    if [ $bet -le 0 ] || [ $bet -gt $saldo ]; then
        echo "Apuesta inválida"
        continue
    fi

    secreto=$(( RANDOM % 36 + 1 ))
    echo "-------------------"

    select opcion in "Número" "Par" "Impar" "Salir"; do
        case $opcion in
            "Número")
                echo "Elige un número del 1 al 36. Si aciertas, ganas un premio extra"
                read numero

                echo "Número secreto: $secreto"

                if [ $numero -eq $secreto ]; then
                    (( saldo += bet * 10 ))
                    echo "¡Has ganado el gran premio!"
                else
                    (( saldo -= bet ))
                    echo "Has perdido ${bet}€"
                fi
                break
                ;;

            "Par")
                echo "Número secreto: $secreto"

                if (( secreto % 2 == 0 )); then
                    (( saldo += bet ))
                    echo "¡Has ganado!"
                else
                    (( saldo -= bet ))
                    echo "Has perdido ${bet}€"
                fi
                break
                ;;

            "Impar")
                echo "Número secreto: $secreto"

                if (( secreto % 2 != 0 )); then
                    (( saldo += bet ))
                    echo "¡Has ganado!"
                else
                    (( saldo -= bet ))
                    echo "Has perdido ${bet}€"
                fi
                break
                ;;

            "Salir")
                echo "Saliendo..."
                exit
                ;;

            *)
                echo "Opción inválida"
                ;;
        esac
    done
done
echo "Te quedaste sin saldo. Game OVER"
```

# Ejercicio Carrera.sh

```bash
#!/bin/bash

echo "=== Carrera de caballos ==="

# colores
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESET="\e[0m"
BAR_LEN=50

# array de colores, si hay mas caballos que colores, se repiten
colors=($RED $GREEN $YELLOW $BLUE $MAGENTA $CYAN)

caballos=()

# Número de caballos
while true; do
    read -p "Número de caballos (2-25): " numeroCaballos
    if [[ "$numeroCaballos" =~ ^[0-9]+$ && "$numeroCaballos" -ge 2 && "$numeroCaballos" -le 25 ]]; then
        break
    fi
    echo "Entrada inválida"
done

# tamaño a recorrer de la pista
read -p "Tamaño de la pista. Mínimo 20 metros: " meta
if ! [[ "$meta" =~ ^[0-9]+$ && "$meta" -ge 20 ]]; then
    echo "Pista inválida, usando 100 metros"
    meta=100
fi

echo "--- Generando caballos ---"

# usamos shuffle para generar caballos aleatorios, sed para quitar las 's
# despues, usamos ${word^} para pasar la primera letra a mayúscula
for ((i=1; i<=numeroCaballos; i++)); do
    word=$(shuf /usr/share/dict/words | head -1 | sed "s/'s$//")
    caballos[$i]="${word^}"
done

# elección
PS3="Elige un caballo: "
select caballo in "${caballos[@]}"; do
    if [ -n "$caballo" ]; then
        break
    fi
    echo "Opción inválida"
done

# obtener el indice del caballo elegido
for i in "${!caballos[@]}"; do
    if [ "${caballos[$i]}" == "$caballo" ]; then
        elegido=$i
        break
    fi
done

# este array se usa para llevar la cuenta de las posiciones
# inicializamos en 0
for ((i=1; i<=numeroCaballos; i++)); do
    pos[$i]=0
done


echo "Comienza la carrera..."

# barra de progreso, usamos -ne como podriamos utilizar clear, pero no es necesario
# limpiar la pantalla con cada dibujado
while true; do
    echo -ne "\033c"

    echo "=== CARRERA ==="
    echo "Meta: $meta"
    echo ""

    ganador=""

    for ((i=1; i<=numeroCaballos; i++)); do
        # el avance de cada caballo
        avance=$(( RANDOM % 6 + 1 ))
        # actualizamos la posicion, aleatoria para cada caballo
        pos[$i]=$(( pos[$i] + avance ))

        progreso=$(( pos[$i] * BAR_LEN / meta ))
        # si el progreso es mayor que la longitud de la barra se limita
        if [ $progreso -gt $BAR_LEN ]; then progreso=$BAR_LEN; fi

        # barra de progreso en pantalla
        barra=$(printf "%0.s#" $(seq 1 $progreso))
        # parte vacia
        vacio=$(printf "%0.s-" $(seq 1 $((BAR_LEN - progreso))))
        # colores para cada caballo
        color=${colors[$((i % ${#colors[@]}))]}

        echo -e "${color}${caballos[$i]}${RESET} | ${barra}${vacio} ${pos[$i]}/${meta}"
        # si no hay ganador y el caballo llega a la meta
        if [ -z "$ganador" ] && [ ${pos[$i]} -ge $meta ]; then
            ganador=$i
        fi
    done
    # esperamos un segundo antes de dibujar de nuevo
    sleep 1
    # si hay ganador salimos
    if [ -n "$ganador" ]; then
        break
    fi
done

echo ""
echo "=== GANADOR ==="
echo "${caballos[$ganador]}"

# comprobacion
if [ "$ganador" -eq "$elegido" ]; then
    echo "¡Has ganado!"
else
    echo "Has perdido"
fi


echo ""
echo "--- PODIO ---"
#obtenemos el top 3 posiciones de los caballos
for ((p=1; p<=3 && p<=numeroCaballos; p++)); do
    # max guarda el mayor valor encontrado
    max=0
    indice=1

    for ((i=1; i<=numeroCaballos; i++)); do
        # si el valor de la posicion es mayor que max
        # actualizamos max
        if [ ${pos[$i]} -gt $max ]; then
            max=${pos[$i]}
            # indice guarda el lugar del caballo en el array inicial
            indice=$i
        fi
    done

    echo "$pº ${caballos[$indice]} (${pos[$indice]})"
    # en cada vuelta, usamos el -1 para "degradar" el valor max y coja el nuevo numero que ocupe la mayor posicion (2a y 3a posicion, por ej)
    pos[$indice]=-1
done
```

# Referencias

[1] «Bash Colors», quick-commands-cheat-sheet. Accedido: 21 de mayo de 2026. [En línea]. Disponible en: https://gkarthiks.github.io/quick-commands-cheat-sheet/bash_command.html
[2] Richard, «Answer to “List of ANSI color escape sequences”», Stack Overflow. Accedido: 21 de mayo de 2026. [En línea]. Disponible en: https://stackoverflow.com/a/33206814
[3] D. Prasad, «Create Bash Progress Bar like a PRO: Don’t be a Rookie!», GoLinuxCloud. Accedido: 21 de mayo de 2026. [En línea]. Disponible en: https://www.golinuxcloud.com/create-bash-progress-bar/
[4] bashBedlam, «Answer to “Create a progress bar in Bash”», Ask Ubuntu. Accedido: 21 de mayo de 2026. [En línea]. Disponible en: https://askubuntu.com/a/801101
[5] M. Haile, «Answer to “How to add a progress bar to a shell script?”», Stack Overflow. Accedido: 21 de mayo de 2026. [En línea]. Disponible en: https://stackoverflow.com/a/238094
