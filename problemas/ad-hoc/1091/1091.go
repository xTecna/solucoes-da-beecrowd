package main

import (
    "fmt"
)

func main() {
    var k, n, m, x, y int

    for {
        fmt.Scanf("%d", &k)

        if k == 0 {
            break
        }

        fmt.Scanf("%d %d", &n, &m)
        for i := 0; i < k; i++ {
            fmt.Scanf("%d %d", &x, &y)

            x -= n
            y -= m

            if x > 0 && y > 0 {
                fmt.Printf("NE\n")
            } else if x > 0 && y < 0 {
                fmt.Printf("SE\n")
            } else if x < 0 && y > 0 {
                fmt.Printf("NO\n")
            } else if x < 0 && y < 0 {
                fmt.Printf("SO\n")
            } else {
                fmt.Printf("divisa\n")
            }
        }
    }
}
