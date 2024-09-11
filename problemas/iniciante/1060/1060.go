package main

import (
    "fmt"
)

func main() {
    var positivos int
    var numero float64

    positivos = 0
    for i := 0; i < 6; i++ {
        fmt.Scanf("%f", &numero)

        if(numero > 0){
            positivos += 1
        }
    }

    fmt.Printf("%d valores positivos\n", positivos)
}
