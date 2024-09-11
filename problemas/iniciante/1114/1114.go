package main

import (
    "fmt"
)

func main() {
    var senha int64

    fmt.Scanf("%d", &senha)
    for {
        if senha == 2002 {
            fmt.Println("Acesso Permitido")
            break
        }
        fmt.Println("Senha Invalida")
        fmt.Scanf("%d", &senha)
    }
}
