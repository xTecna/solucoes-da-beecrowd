package main

import (
    "fmt"
)

func main() {
    var x, y int

    for {
        fmt.Scanf("%d %d", &x, &y)

        if x == 0 || y == 0 {
            break
        }

        if x > 0 {
            if y > 0 {
                fmt.Printf("primeiro\n")
            } else {
                fmt.Printf("quarto\n")
            }
        } else {
            if y > 0 {
                fmt.Printf("segundo\n")
            } else {
                fmt.Printf("terceiro\n")
            }
        }
    }
}
