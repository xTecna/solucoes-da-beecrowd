package main

import (
    "fmt"
)

func main() {
    var n, k, feedback int

    nomes := [4]string{"Rolien", "Naej", "Elehcim", "Odranoel"}

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &k)
        for j := 0; j < k; j++ {
            fmt.Scanf("%d", &feedback)
            fmt.Printf("%s\n", nomes[feedback-1])
        }
    }
}
