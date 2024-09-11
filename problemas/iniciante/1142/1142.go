package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d", &n)

    for i := 0; i < n; i++ {
        for j := 0; j < 3; j++ {
            fmt.Printf("%d ", 4*i+1+j)
        }
        fmt.Printf("PUM\n")
    }
}
