package main

import (
    "fmt"
)

func main() {
    var t, n, k int

    fmt.Scanf("%d", &t)

    for i := 0; i < t; i++ {
        fmt.Scanf("%d %d", &n, &k)
        fmt.Printf("%d\n", (n/k)+(n%k))
    }
}
