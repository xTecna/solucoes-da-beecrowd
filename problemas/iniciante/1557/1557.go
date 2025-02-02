package main

import (
    "fmt"
    "math"
)

func main() {
    var n int

    for {
        fmt.Scanf("%d", &n)

        if n == 0 {
            break
        }

        limite := int32(math.Floor(math.Log10(float64(int32(1)<<(2*n-2))))) + 1
        for i := 0; i < n; i++ {
            fmt.Printf(fmt.Sprintf("%%%dd", limite), 1<<i)
            for j := 1; j < n; j++ {
                fmt.Printf(fmt.Sprintf(" %%%dd", limite), 1<<(i+j))
            }
            fmt.Printf("\n")
        }
        fmt.Printf("\n")
    }
}
