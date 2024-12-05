package main

import (
    "fmt"
)

func main() {
    var p, codigo, q int

    precos := [6]float64{0, 1.5, 2.5, 3.5, 4.5, 5.5}

    fmt.Scanf("%d\n", &p)

    valor := 0.0
    for i := 0; i < p; i++ {
        fmt.Scanf("%d %d\n", &codigo, &q)
        valor += precos[codigo-1000] * float64(q)
    }

    fmt.Printf("%.2f\n", valor)
}
