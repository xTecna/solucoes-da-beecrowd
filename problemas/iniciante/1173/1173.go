package main

import (
    "fmt"
)

func main() {
    var x int64

    fmt.Scanf("%d", &x)
    for i := 0; i < 10; i++ {
        fmt.Printf("N[%d] = %d\n", i, x)
        x *= 2
    }
}
