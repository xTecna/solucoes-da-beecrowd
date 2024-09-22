package main

import (
    "fmt"
)

func main() {
    var n, la, lb, sa, sb int

    fmt.Scanf("%d", &n)
    fmt.Scanf("%d %d", &la, &lb)
    fmt.Scanf("%d %d", &sb, &sb)

    if la <= n && n <= lb && sa <= n && n <= sb {
        fmt.Printf("possivel\n")
    } else {
        fmt.Printf("impossivel\n")
    }
}
