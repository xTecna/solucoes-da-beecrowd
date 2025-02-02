package main

import (
    "fmt"
)

func main() {
    var c, n int

    fmt.Scanf("%d\n", &c)
    for i := 0; i < c; i++ {
        fmt.Scanf("%d\n", &n)
        if n <= 8000 {
            fmt.Printf("Inseto!\n")
        } else {
            fmt.Printf("Mais de 8000!\n")
        }
    }
}
