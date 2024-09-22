package main

import (
    "fmt"
)

func main() {
    var x, y [5]int
    var compativel bool

    for i := 0; i < 5; i++ {
        fmt.Scanf("%d", &x[i])
    }
    for i := 0; i < 5; i++ {
        fmt.Scanf("%d", &y[i])
    }

    compativel = true
    for i := 0; i < 5; i++ {
        if x[i] == y[i] {
            compativel = false
            break
        }
    }

    if compativel {
        fmt.Printf("Y\n")
    } else {
        fmt.Printf("N\n")
    }
}
