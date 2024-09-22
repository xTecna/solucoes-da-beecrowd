package main

import (
    "fmt"
)

func main() {
    var t, escolha int

    fmt.Scanf("%d", &t)

    corretos := 0
    for i := 0; i < 5; i++ {
        fmt.Scanf("%d", &escolha)
        if escolha == t {
            corretos += 1
        }
    }

    fmt.Printf("%d\n", corretos)
}
