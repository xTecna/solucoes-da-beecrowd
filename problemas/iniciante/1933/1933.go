package main

import (
    "fmt"
    "math"
)

func main() {
    var a, b int

    fmt.Scanf("%d %d", &a, &b)
    fmt.Printf("%d\n", int32(math.Max(float64(a), float64(b))))
}
