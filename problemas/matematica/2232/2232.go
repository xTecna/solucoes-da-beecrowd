package main

import (
    "fmt"
)

func main() {
    var t, n int

    fmt.Scanf("%d", &t)
    for i := 0; i < t; i++ {
        fmt.Scanf("%d", &n)
        fmt.Printf("%d\n", (1<<n)-1)
    }
}
