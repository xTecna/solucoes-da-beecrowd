package main

import (
    "fmt"
)

func segura(m [102][102]int, i int, j int) bool {
    return m[i][j]+m[i+1][j]+m[i][j+1]+m[i+1][j+1] >= 2
}

func main() {
    var M [102][102]int
    var n int

    fmt.Scanf("%d\n", &n)

    for i := 0; i < n+1; i++ {
        for j := 0; j < n+1; j++ {
            fmt.Scanf("%d", &M[i][j])
        }
    }

    for i := 0; i < n; i++ {
        for j := 0; j < n; j++ {
            if segura(M, i, j) {
                fmt.Printf("S")
            } else {
                fmt.Printf("U")
            }
        }
        fmt.Printf("\n")
    }
}
