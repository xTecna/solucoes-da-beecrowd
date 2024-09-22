package main

import (
    "fmt"
)

func main() {
    var n, poder int
    var nome string

    fmt.Scanf("%d\n", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%s %d\n", &nome, &poder)

        if nome == "Thor" {
            fmt.Printf("Y\n")
        } else {
            fmt.Printf("N\n")
        }
    }
}
