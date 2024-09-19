package main

import (
    "fmt"
)

func main() {
    var t string
    var media float64
    var M [12][12]float64
    var quantidade int64

    fmt.Scanf("%s\n", &t)

    for i := 0; i < 12; i++ {
        for j := 0; j < 12; j++ {
            fmt.Scanf("%f\n", &M[i][j])
        }
    }

    media = 0.0
    quantidade = 0
    for i := 7; i < 12; i++ {
        for j := 12 - i; j < i; j++ {
            media = media + M[i][j]
            quantidade = quantidade + 1
        }
    }

    if t == "M" {
        media = media / float64(quantidade)
    }

    fmt.Printf("%.1f\n", media)
}
