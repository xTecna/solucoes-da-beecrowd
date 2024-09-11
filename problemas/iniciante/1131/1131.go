package main

import (
    "fmt"
)

func main() {
    var inter, gremio, empate, i, g, codigo int

    inter = 0
    gremio = 0
    empate = 0
    for {
        fmt.Scanf("%d %d\n", &i, &g)

        if i < g {
            gremio += 1
        } else if i == g {
            empate += 1
        } else {
            inter += 1
        }

        for {
            fmt.Printf("Novo grenal (1-sim 2-nao)\n")
            fmt.Scanf("%d\n", &codigo)
            if codigo == 1 || codigo == 2 {
                break
            }
        }

        if codigo == 2 {
            break
        }
    }

    fmt.Printf("%d grenais\n", inter+gremio+empate)
    fmt.Printf("Inter:%d\n", inter)
    fmt.Printf("Gremio:%d\n", gremio)
    fmt.Printf("Empates:%d\n", empate)

    if inter > gremio && inter > empate {
        fmt.Printf("Inter venceu mais\n")
    } else if gremio > inter && gremio > empate {
        fmt.Printf("Gremio venceu mais\n")
    } else {
        fmt.Printf("Nao houve vencedor\n")
    }
}
