package main

import (
    "fmt"
)

func main() {
    var n, h, m, o int

    fmt.Scanf("%d\n", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d %d\n", &h, &m, &o)

        if o == 1 {
            fmt.Printf("%02d:%02d - A porta abriu!\n", h, m)
        } else {
            fmt.Printf("%02d:%02d - A porta fechou!\n", h, m)
        }
    }
}
