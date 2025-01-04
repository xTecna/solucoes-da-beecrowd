package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    var v, d float64

    scanner := bufio.NewScanner(os.Stdin)

    pi := 3.14
    for scanner.Scan() {
        fmt.Sscanf(scanner.Text(), "%f", &v)

        if !scanner.Scan() {
            break
        }
        fmt.Sscanf(scanner.Text(), "%f", &d)
        d /= 2.0

        area := pi * d * d
        altura := v / area

        fmt.Printf("ALTURA = %.2f\n", altura)
        fmt.Printf("AREA = %.2f\n", area)
    }
}
