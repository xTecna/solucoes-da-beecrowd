package main

import (
    "fmt"
    "strconv"
    "strings"
)

func main() {
    var m, n int
    var soma string

    for {
        fmt.Scanf("%d %d", &n, &m)

        if n == 0 && m == 0 {
            break
        }

        soma = strconv.Itoa(n + m)
        soma = strings.ReplaceAll(soma, "0", "")
        fmt.Printf("%s\n", soma)
    }
}
