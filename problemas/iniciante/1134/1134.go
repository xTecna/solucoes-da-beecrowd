package main

import (
    "fmt"
)

func main() {
    var alcool, gasolina, diesel, codigo int

    alcool = 0
    gasolina = 0
    diesel = 0
    for {
        fmt.Scanf("%d", &codigo)

        if codigo == 1 {
            alcool += 1
        } else if codigo == 2 {
            gasolina += 1
        } else if codigo == 3 {
            diesel += 1
        } else if codigo == 4 {
            break
        }
    }

    fmt.Printf("MUITO OBRIGADO\n")
    fmt.Printf("Alcool: %d\n", alcool)
    fmt.Printf("Gasolina: %d\n", gasolina)
    fmt.Printf("Diesel: %d\n", diesel)
}
