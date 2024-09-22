package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d", &n)

    resposta := 0.0
    if n == 0 {
        resposta = 1.0
    } else {
        resposta = 2.0
        for i := 1; i < n; i++ {
            resposta = 2.0 + 1.0/resposta
        }
        resposta = 1.0 + 1.0/resposta
    }
    fmt.Printf("%.10f\n", resposta)
}
