package main

import "fmt"

func main() {
    var n, m, x int

    fmt.Scanf("%d", &n)
    fmt.Scanf("%d", &m)

    figurinhas := make(map[int]bool)
    for i := 0; i < m; i++ {
        fmt.Scanf("%d", &x)
        figurinhas[x] = true
    }

    fmt.Printf("%d\n", n-len(figurinhas))
}
