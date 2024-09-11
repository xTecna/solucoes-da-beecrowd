package main

import (
    "fmt"
)

func main() {
    var n, opcao, corretos, cor int

    for {
        fmt.Scanf("%d", &n)

        if n == 0 {
            break
        }

        for i := 0; i < n; i++ {
            opcao = -1
            corretos = 0
            for k := 0; k < 5; k++ {
                fmt.Scanf("%d", &cor)
                if cor <= 127 {
                    opcao = k
                    corretos += 1
                }
            }

            if corretos == 1 {
                fmt.Printf("%c\n", byte(int('A')+opcao))
            } else {
                fmt.Printf("*\n")
            }
        }
    }
}
