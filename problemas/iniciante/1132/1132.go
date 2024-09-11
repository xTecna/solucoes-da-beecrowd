package main

import (
    "fmt"
)

func main() {
    var x, y, soma int

    fmt.Scanf("%d", &x)
    fmt.Scanf("%d", &y)

    if x > y {
        temp := x
        x = y
        y = temp
    }

    for i := x; i <= y; i++ {
        if i%13 != 0 {
            soma += i
        }
    }

    fmt.Printf("%d\n", soma)
}
