package main

import (
    "fmt"
)

func main() {
    var x int

    fmt.Scanf("%d", &x)
    x += 1 - x % 2

    for i := 0; i < 6; i++ {
        fmt.Println(x + 2 * i)
    }
}
