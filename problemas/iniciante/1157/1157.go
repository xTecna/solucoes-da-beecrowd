package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Scanf("%d", &n)
    for i := 1; i <= n; i++ {
        if n%i == 0 {
            fmt.Printf("%d\n", i)
        }
    }
}
