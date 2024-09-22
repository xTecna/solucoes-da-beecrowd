package main

import (
    "fmt"
)

func main() {
    var x int

    fmt.Scanf("%d\n", &x)
    fmt.Printf("%d\n", (x + 2 - (x % 2)))
}
