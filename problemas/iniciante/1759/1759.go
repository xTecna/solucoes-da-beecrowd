package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d", &n)
    fmt.Printf("Ho")
    for i := 1; i < n; i++ {
        fmt.Printf(" Ho")
    }
    fmt.Printf("!\n")
}
