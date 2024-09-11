package main

import (
    "fmt"
    "math"
)

func quantidadeImpares(x int, y int) int {
    return (y-x)/2 + 1
}

func somaPA(a0 int, an int, n int) int {
    return (a0 + an) * n / 2
}

func main() {
    var n, x, y int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &x, &y)

        if x > y {
            temp := x
            x = y
            y = temp
        }

        x += int(math.Abs(float64(x)))%2 + 1
        y -= int(math.Abs(float64(y)))%2 + 1

        if x > y {
            fmt.Printf("0\n")
        } else {
            fmt.Printf("%d\n", somaPA(x, y, quantidadeImpares(x, y)))
        }
    }
}
