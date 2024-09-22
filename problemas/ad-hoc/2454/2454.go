package main

import (
    "fmt"
)

func main() {
    var p, r int

    fmt.Scanf("%d %d", &p, &r)

    if p == 1 {
        if r == 1 {
            fmt.Printf("A\n")
        } else {
            fmt.Printf("B\n")
        }
    } else {
        fmt.Printf("C\n")
    }
}
