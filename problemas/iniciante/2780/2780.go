package main

import (
    "fmt"
)

func main() {
    var d int

    fmt.Scanf("%d\n", &d)

    if d <= 800 {
        fmt.Printf("1\n")
    } else if d <= 1400 {
        fmt.Printf("2\n")
    } else {
        fmt.Printf("3\n")
    }
}
