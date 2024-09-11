package main

import (
    "fmt"
)

func main() {
    for i := 0; i < 13; i++ {
        fmt.Printf("I=%d J=%d\n", 1+3*i, 60-5*i)
    }
}
