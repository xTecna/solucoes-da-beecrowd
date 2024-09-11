package main

import (
    "fmt"
)

func somaPA(a1 int, an int, n int) int {
    return ((a1 + an) * n) / 2
}

func main() {
    var a, n int

    fmt.Scanf("%d", &a)
    for {
        fmt.Scanf("%d", &n)
        if n > 0 {
            break
        }
    }

    a += 1 - (a % 2)
    fmt.Printf("%d\n", somaPA(a, a+n-1, n))
}
