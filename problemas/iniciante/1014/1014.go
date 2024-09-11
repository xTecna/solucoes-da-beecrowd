package main

import (
    "fmt"
)

func main() {
    var X,Y float64

    fmt.Scanf("%f", &X)
    fmt.Scanf("%f", &Y)

    fmt.Printf("%.3f km/l\n", X/Y)
}
