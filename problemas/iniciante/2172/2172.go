package main

import (
    "fmt"
)

func main() {
    var x, m int64

    for {
        fmt.Scanf("%d %d\n", &x, &m)

        if x == 0 && m == 0 {
            break
        }

        fmt.Printf("%d\n", x*m)
    }
}
