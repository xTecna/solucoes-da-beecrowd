package main

import (
    "fmt"
)

func main() {
    var pares, numero int

    pares = 0
    for i := 0; i < 5; i++ {
        fmt.Scanf("%d", &numero)

        if(numero % 2 == 0){
            pares += 1
        }
    }

    fmt.Printf("%d valores pares\n", pares)
}
