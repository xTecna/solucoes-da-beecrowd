package main

import (
    "fmt"
)

func main() {
    var a, b, c int

    fmt.Scanf("%d %d %d", &a, &b, &c)

    if a == b || a == c || b == c || (a+b) == c || (a+c) == b || (b+c) == a {
        fmt.Printf("S\n")
    } else {
        fmt.Printf("N\n")
    }
}
