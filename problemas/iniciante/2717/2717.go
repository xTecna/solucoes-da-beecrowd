package main

import (
    "fmt"
)

func main() {
    var n, a, b int

    fmt.Scanf("%d\n", &n)
    fmt.Scanf("%d %d\n", &a, &b)

    if a+b <= n {
        fmt.Printf("Farei hoje!\n")
    } else {
        fmt.Printf("Deixa para amanha!\n")
    }
}
