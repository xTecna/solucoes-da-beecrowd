package main

import (
    "fmt"
)

func r(a int, b int) int {
    return (9 * a * a) + (b * b)
}

func b(a int, b int) int {
    return 2*(a*a) + (25 * b * b)
}

func c(a int, b int) int {
    return -100*a + (b * b * b)
}

func main() {
    var n, x, y, rafael, beto, carlos int

    fmt.Scanf("%d", &n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d %d", &x, &y)

        rafael = r(x, y)
        beto = b(x, y)
        carlos = c(x, y)

        if rafael > beto && rafael > carlos {
            fmt.Printf("Rafael ganhou\n")
        } else if beto > rafael && beto > carlos {
            fmt.Printf("Beto ganhou\n")
        } else {
            fmt.Printf("Carlos ganhou\n")
        }
    }
}
