package main

import (
    "fmt"
)

func main() {
    var n, x int

    fmt.Scanf("%d", &n)

    vitorias := 0
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &x)
        if x != 1 {
            vitorias += 1
        }
    }

    fmt.Printf("%d\n", vitorias)
}
