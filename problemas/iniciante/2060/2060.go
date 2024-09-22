package main

import (
    "fmt"
)

func main() {
    var n, numero int

    fmt.Scanf("%d", &n)

    dois := 0
    tres := 0
    quatro := 0
    cinco := 0
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &numero)

        if numero%2 == 0 {
            dois += 1
        }
        if numero%3 == 0 {
            tres += 1
        }
        if numero%4 == 0 {
            quatro += 1
        }
        if numero%5 == 0 {
            cinco += 1
        }
    }

    fmt.Printf("%d Multiplo(s) de 2\n", dois)
    fmt.Printf("%d Multiplo(s) de 3\n", tres)
    fmt.Printf("%d Multiplo(s) de 4\n", quatro)
    fmt.Printf("%d Multiplo(s) de 5\n", cinco)
}
