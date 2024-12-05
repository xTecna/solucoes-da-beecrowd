package main

import (
    "fmt"
)

func main() {
    var c int

    for i := 0; i < 4; i++ {
        fmt.Scanf("%d", &c)
        if c == 1 {
            fmt.Printf("%d\n", i+1)
            break
        }
    }
}
