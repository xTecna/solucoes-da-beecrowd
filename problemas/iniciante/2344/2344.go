package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d\n", &n)

    if n > 85 {
        fmt.Printf("A\n")
    } else if n > 60 {
        fmt.Printf("B\n")
    } else if n > 35 {
        fmt.Printf("C\n")
    } else if n > 0 {
        fmt.Printf("D\n")
    } else {
        fmt.Printf("E\n")
    }
}
