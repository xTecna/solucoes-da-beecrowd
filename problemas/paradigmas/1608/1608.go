package main

import (
    "fmt"
)

func main() {
    var T, D, I, B, p, q, x, y int

    fmt.Scanf("%d", &T)
    for k := 0; k < T; k++ {
        fmt.Scanf("%d %d %d", &D, &I, &B)

        precos := make([]int, I)
        for m := 0; m < I; m++ {
            fmt.Scanf("%d", &p)
            precos[m] = p
        }

        resposta := 0
        for i := 0; i < B; i++ {
            fmt.Scanf("%d", &q)

            custo := 0
            for j := 0; j < q; j++ {
                fmt.Scanf("%d %d", &x, &y)
                custo += precos[x] * y
            }

            if D/custo > resposta {
                resposta = D / custo
            }
        }

        fmt.Printf("%d\n", resposta)
    }
}
