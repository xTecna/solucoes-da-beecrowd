package main

import (
    "fmt"
)

func main() {
    var n, m int
    var acao string

    fmt.Scanf("%d %d\n", &n, &m)
    for i := 0; i < m; i++ {
        fmt.Scanf("%s\n", &acao)

        if acao == "fechou" {
            n += 1
        } else {
            n -= 1
        }
    }

    fmt.Printf("%d\n", n)
}
