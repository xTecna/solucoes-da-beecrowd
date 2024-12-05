package main

import (
    "fmt"
)

func main() {
    var l, c int

    fmt.Scanf("%d", &l)
    fmt.Scanf("%d", &c)

    fmt.Printf("%d\n", l*c+(l-1)*(c-1))
    fmt.Printf("%d\n", 2*(l+c-2))
}
