package main

import (
    "fmt"
)

func main() {
    var k int

    fmt.Scanf("%d", &k)

    if k == 1 {
        fmt.Printf("Top 1\n")
    } else if k <= 3 {
        fmt.Printf("Top 3\n")
    } else if k <= 5 {
        fmt.Printf("Top 5\n")
    } else if k <= 10 {
        fmt.Printf("Top 10\n")
    } else if k <= 25 {
        fmt.Printf("Top 25\n")
    } else if k <= 50 {
        fmt.Printf("Top 50\n")
    } else {
        fmt.Printf("Top 100\n")
    }
}
