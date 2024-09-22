package main

import (
    "fmt"
)

func main() {
    var n, r1, r2 int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &r1, &r2)
        fmt.Printf("%d\n", r1+r2)
    }
}
