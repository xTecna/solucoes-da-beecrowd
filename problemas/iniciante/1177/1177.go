package main

import (
    "fmt"
)

func main() {
    var x int

    fmt.Scanf("%d", &x)
    for i := 0; i < 1000; i++ {
        fmt.Printf("N[%d] = %d\n", i, i%x)
    }
}
