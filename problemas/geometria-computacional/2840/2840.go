package main

import (
    "fmt"
)

func main() {
    var r, l int64

    fmt.Scanf("%d %d", &r, &l)

    pi := 3.1415
    v := (4.0 * pi * float64(r) * float64(r) * float64(r)) / 3.0

    fmt.Printf("%d\n", int(float64(l)/v))
}
