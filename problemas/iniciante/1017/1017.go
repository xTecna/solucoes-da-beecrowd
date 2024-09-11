package main

import (
    "fmt"
)

func main() {
    var tempo,velocidade int

    fmt.Scanf("%d", &tempo)
    fmt.Scanf("%d", &velocidade)

    fmt.Printf("%.3f\n", float64(tempo * velocidade)/12)
}
