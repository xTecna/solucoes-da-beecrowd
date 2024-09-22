package main

import (
    "fmt"
)

func main() {
    var c, p, f int

    fmt.Scanf("%d %d %d", &c, &p, &f)

    if p >= c*f {
        fmt.Printf("S\n")
    } else {
        fmt.Printf("N\n")
    }
}
