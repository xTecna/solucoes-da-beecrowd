package main

import (
    "fmt"
)

func main() {
    var c, n int

    fmt.Scanf("%d %d", &c, &n)
    fmt.Printf("%d\n", c%n)
}
