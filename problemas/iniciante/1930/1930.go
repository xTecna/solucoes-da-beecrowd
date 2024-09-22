package main

import (
    "fmt"
)

func main() {
    var t1, t2, t3, t4 int

    fmt.Scanf("%d %d %d %d", &t1, &t2, &t3, &t4)
    soma := t1 + t2 + t3 + t4 - 3
    fmt.Printf("%d\n", soma)
}
