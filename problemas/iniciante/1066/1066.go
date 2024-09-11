package main

import (
    "fmt"
)

func main() {
    var pares, impares, positivos, negativos, numero int

    pares = 0
    impares = 0
    positivos = 0
    negativos = 0
    for i := 0; i < 5; i++ {
        fmt.Scanf("%d", &numero)

        if(numero % 2 == 0){
            pares += 1
        }else{
            impares += 1
        }

        if(numero > 0){
            positivos += 1
        }else if(numero < 0){
            negativos += 1
        }
    }

    fmt.Printf("%d valor(es) par(es)\n", pares)
    fmt.Printf("%d valor(es) impar(es)\n", impares)
    fmt.Printf("%d valor(es) positivo(s)\n", positivos)
    fmt.Printf("%d valor(es) negativo(s)\n", negativos)
}
