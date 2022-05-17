#!/bin/bash

OUTPUT=$(echo "Tú"|bash ejercicio.sh pruebas)

if [ "$OUTPUT" = "Encantado de saludarte, tú" ]; then
    echo "Test 1 correcto"
else
    echo "Test 1 FALLADO"
    exit 1
fi

OUTPUT=$(echo "secreto"|./ejercicio.sh pruebas)

if [ "$OUTPUT" = "Encontraste el truco!: el primer parámetro del script es: sabeurp" ]; then
    echo "Test 2 correcto"
else
    echo "Test 2 FALLADO"
    exit 1
fi