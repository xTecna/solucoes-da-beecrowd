package main

import (
    "fmt"
)

func main() {
    var n, a, b, jogador1, jogador2 int

    for {
        fmt.Scanf("%d", &n)

        if n == 0 {
            break
        }

        jogador1 = 0
        jogador2 = 0

        for i := 0; i < n; i++ {
            fmt.Scanf("%d %d", &a, &b)

            if a > b {
                jogador1 += 1
            } else if a < b {
                jogador2 += 1
            }
        }

        fmt.Printf("%d %d\n", jogador1, jogador2)
    }
}
