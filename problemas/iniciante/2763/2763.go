package main

import (
    "fmt"
)

func main() {
    var a, b, c, d int

    fmt.Scanf("%d.%d.%d-%d\n", &a, &b, &c, &d)
    fmt.Printf("%03d\n%03d\n%03d\n%02d\n", a, b, c, d)
}
