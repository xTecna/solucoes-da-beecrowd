package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    var n int

    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        fmt.Sscanf(scanner.Text(), "%d", &n)

        for i := 0; i < n; i++ {
            for j := 0; j < n; j++ {
                if i == n-1-j {
                    fmt.Printf("2")
                } else if i == j {
                    fmt.Printf("1")
                } else {
                    fmt.Printf("3")
                }
            }
            fmt.Printf("\n")
        }
    }
}
