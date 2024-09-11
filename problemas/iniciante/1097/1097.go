package main

import (
    "fmt"
)

func main() {
    for i := 0; i < 5; i++ {
        for j := 7; j > 4; j-- {
            fmt.Printf("I=%d J=%d\n", 1+2*i, j+2*i)
        }
    }
}
