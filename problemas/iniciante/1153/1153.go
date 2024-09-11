package main

import (
    "fmt"
)

var f [14]int = [14]int{}

func fatorial(n int) int {
    if f[n] == -1 {
        f[n] = fatorial(n-1) * n
    }
    return f[n]
}

func main() {
    var n int

    f[0] = 1
    for i := 1; i < 14; i++ {
        f[i] = -1
    }

    fmt.Scanf("%d", &n)
    fmt.Printf("%d\n", fatorial(n))
}
