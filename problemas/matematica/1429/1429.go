package main

import (
    "fmt"
)

func converteParaDecimal(n string) int {
    var resposta, potencia int
    fatorial := [5]int{1, 2, 6, 24, 120}

    resposta = 0
    potencia = 0
    for i := len(n) - 1; i > -1; i-- {
        resposta += (int(n[i]) - int('0')) * fatorial[potencia]
        potencia += 1
    }

    return resposta
}

func main() {
    var n string

    for {
        fmt.Scanf("%s\n", &n)
        if n == "0" {
            break
        }
        fmt.Printf("%d\n", converteParaDecimal(n))
    }

}
