package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    var v, t int

    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        fmt.Sscanf(scanner.Text(), "%d %d", &v, &t)
        fmt.Printf("%d\n", v*2*t)
    }
}
