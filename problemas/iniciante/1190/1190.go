package main

import (
    "fmt"
)

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

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
    for i := 0; i < 12; i++ {
        for j := max(i+1, 12-i); j < 12; j++ {
            media = media + M[i][j]
            quantidade = quantidade + 1
        }
    }

    if t == "M" {
        media = media / float64(quantidade)
    }

    fmt.Printf("%.1f\n", media)
}
