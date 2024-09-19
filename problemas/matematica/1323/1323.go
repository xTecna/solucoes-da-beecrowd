package main

import (
    "fmt"
)

var f [101]int = [101]int{}

func feynman(n int) int {
    if f[n] == -1 {
        f[n] = feynman(n-1) + (n * n)
    }
    return f[n]
}

func main() {
    var n int

    f[1] = 1
    for i := 2; i < 101; i++ {
        f[i] = -1
    }

    for {
        fmt.Scanf("%d", &n)
        if n == 0 {
            break
        }
        fmt.Printf("%d\n", feynman(n))
    }
}
