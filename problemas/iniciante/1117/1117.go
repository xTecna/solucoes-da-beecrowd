package main

import (
    "fmt"
)

func main() {
    var nota float64
    var notas []float64

    for {
        fmt.Scanf("%f\n", &nota)
        if 0.0 <= nota && nota <= 10.0 {
            notas = append(notas, nota)
            if len(notas) == 2 {
                break
            }
        } else {
            fmt.Printf("nota invalida\n")
        }
    }

    fmt.Printf("media = %.2f\n", (notas[0]+notas[1])/2.0)
}
