package main

import (
    "fmt"
)

func main() {
    var n, numero int

    fmt.Scanf("%d", &n)

    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &numero)
        fmt.Printf("%d\n", numero%2)
    }
}
