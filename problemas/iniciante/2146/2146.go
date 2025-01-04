package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    var senha int

    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        fmt.Sscanf(scanner.Text(), "%d", &senha)
        fmt.Printf("%d\n", senha-1)
    }
}
