package main

import (
    "fmt"
)

func main() {
    var l int

    fmt.Scanf("%c", &l)
    fmt.Printf("%d\n", l-'A'+1)
}
