package main

import (
    "fmt"
)

func main() {
    var s string

    fmt.Scanf("%s\n", &s)

    soma := 0
    for i := 0; i < len(s); i++ {
        soma += int(s[i])
    }
    fmt.Printf("%s%d\n", s, soma%2)
}
