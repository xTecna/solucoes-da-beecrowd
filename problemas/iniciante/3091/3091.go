package main

import (
    "fmt"
)

func main() {
    var a, b int

    fmt.Scanf("%d", &a)
    fmt.Scanf("%d", &b)

    fmt.Printf("%d\n", a%b)
}
