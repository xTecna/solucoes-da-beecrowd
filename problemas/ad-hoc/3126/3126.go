package main

import (
    "fmt"
)

func main() {
    var C, numero int

    fmt.Scanf("%d\n", &C)

    resposta := 0
    for i := 0; i < C; i++ {
        fmt.Scanf("%d", &numero)
        resposta += numero
    }

    fmt.Printf("%d\n", resposta)
}
