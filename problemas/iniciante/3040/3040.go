package main

import (
    "fmt"
)

func main() {
    var n, altura, espessura, galhos int

    fmt.Scanf("%d", &n)

    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d %d", &altura, &espessura, &galhos)
        if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos {
            fmt.Printf("Sim\n")
        } else {
            fmt.Printf("Nao\n")
        }
    }
}
