package main

import (
    "fmt"
)

func main() {
    var n, numero, dentro, fora int

    dentro = 0
    fora = 0
    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &numero)

        if numero >= 10 && numero <= 20 {
            dentro += 1
        } else {
            fora += 1
        }
    }

    fmt.Printf("%d in\n", dentro)
    fmt.Printf("%d out\n", fora)
}
