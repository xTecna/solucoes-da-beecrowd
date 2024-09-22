package main

import (
    "fmt"
)

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

func main() {
    var ca, ba, pa, cr, br, pr int

    fmt.Scanf("%d %d %d\n", &ca, &ba, &pa)
    fmt.Scanf("%d %d %d\n", &cr, &br, &pr)

    fmt.Printf("%d\n", max(cr-ca, 0)+max(br-ba, 0)+max(pr-pa, 0))
}
