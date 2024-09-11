package main

import (
    "fmt"
)

func main() {
    var A,B,C float64

    fmt.Scanf("%f", &A)
    fmt.Scanf("%f", &B)
    fmt.Scanf("%f", &C)
    
    fmt.Printf("MEDIA = %.1f\n", (2 * A + 3 * B + 5 * C)/10)
}
