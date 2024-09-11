package main

import (
    "fmt"
)

func main() {
    var x, y int

    for {
        fmt.Scanf("%d %d", &x, &y)

        if x == y {
            break
        } else if x < y {
            fmt.Printf("Crescente\n")
        } else {
            fmt.Printf("Decrescente\n")
        }
    }
}
