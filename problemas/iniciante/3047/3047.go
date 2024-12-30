package main

import (
    "fmt"
    "math"
)

func main() {
    var m, a, b int

    fmt.Scanf("%d", &m)
    fmt.Scanf("%d", &a)
    fmt.Scanf("%d", &b)

    c := m - a - b

    fmt.Printf("%d\n", int(math.Max(float64(a), math.Max(float64(b), float64(c)))))
}
