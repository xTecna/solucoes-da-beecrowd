package main

import (
    "fmt"
)

func main() {
    var l, r int

    for {
        fmt.Scanf("%d %d", &l, &r)

        if l == 0 && r == 0 {
            break
        }

        fmt.Printf("%d\n", l+r)
    }
}
