package main

import (
    "fmt"
)

func main() {
    var n, x, y int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &x, &y)
        fmt.Printf("%d cm2\n", (x*y)/2)
    }
}
