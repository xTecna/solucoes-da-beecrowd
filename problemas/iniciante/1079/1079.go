package main

import (
    "fmt"
)

func main() {
    var n int
    var a, b, c, media float64

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%f %f %f", &a, &b, &c)
        media = (2.0*a + 3.0*b + 5.0*c) / 10.0
        fmt.Printf("%.1f\n", media)
    }
}
