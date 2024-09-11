package main

import (
    "fmt"
)

func main() {
    var n, x, y int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &x, &y)

        if y == 0 {
            fmt.Printf("divisao impossivel\n")
        } else {
            fmt.Printf("%.1f\n", float64(x)/float64(y))
        }
    }
}
