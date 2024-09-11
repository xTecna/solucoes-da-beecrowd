package main

import (
    "fmt"
)

func main() {
    var idade, soma, q int

    soma = 0
    q = 0
    for {
        fmt.Scanf("%d\n", &idade)
        if idade < 0 {
            break
        }

        soma += idade
        q += 1
    }

    fmt.Printf("%.2f\n", float64(soma)/float64(q))
}
