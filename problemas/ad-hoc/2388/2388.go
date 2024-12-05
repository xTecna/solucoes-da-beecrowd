package main

import (
    "fmt"
)

func main() {
    var n, v, t int

    fmt.Scanf("%d", &n)

    resposta := 0
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &v, &t)
        resposta += v * t
    }

    fmt.Printf("%d\n", resposta)
}
