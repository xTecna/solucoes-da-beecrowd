package main

import (
    "fmt"
)

func main() {
    var p1, c1, p2, c2, diferenca int

    fmt.Scanf("%d %d %d %d", &p1, &c1, &p2, &c2)

    diferenca = p2*c2 - p1*c1

    if diferenca < 0 {
        fmt.Printf("-1\n")
    } else if diferenca > 0 {
        fmt.Printf("1\n")
    } else {
        fmt.Printf("0\n")
    }
}
