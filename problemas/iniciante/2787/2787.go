package main

import (
    "fmt"
)

func main() {
    var l, c int32

    fmt.Scanf("%d\n%d\n", &l, &c)
    fmt.Printf("%d\n", 1-((l%2)^(c%2)))
}
