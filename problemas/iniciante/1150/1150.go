package main

import (
    "fmt"
)

func main() {
    var x, z, soma, resposta int

    fmt.Scanf("%d", &x)
    for {
        fmt.Scanf("%d", &z)
        if z > x {
            break
        }
    }

    soma = x
    resposta = 1
    for soma <= z {
        soma += x + resposta
        resposta += 1
    }

    fmt.Printf("%d\n", resposta)
}
