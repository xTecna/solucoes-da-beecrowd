package main

import (
    "fmt"
    "math"
)

func somaPA(a0 int, an int, n int) int {
    return (a0 + an) * n / 2
}

func main() {
    var n, x, y int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &x, &y)

        x += 1 - (int(math.Abs(float64(x))) % 2)

        fmt.Printf("%d\n", somaPA(x, x+2*(y-1), y))
    }
}
