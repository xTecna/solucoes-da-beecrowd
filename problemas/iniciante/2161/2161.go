package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d", &n)

    resposta := 0.0
    if n == 0 {
        resposta = 3.0
    } else {
        resposta = 6.0
        for i := 1; i < n; i++ {
            resposta = 6.0 + 1.0/resposta
        }
        resposta = 3.0 + 1.0/resposta
    }
    fmt.Printf("%.10f\n", resposta)
}
