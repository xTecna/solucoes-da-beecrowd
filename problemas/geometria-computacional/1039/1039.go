package main

import (
    "bufio"
    "fmt"
    "math"
    "os"
)

func dist(x1, y1, x2, y2 int64) float64 {
    return math.Sqrt((float64)((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1)))
}

func main() {
    var r1, x1, y1, r2, x2, y2 int64

    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        entrada := scanner.Text()
        fmt.Sscanf(entrada, "%d %d %d %d %d %d", &r1, &x1, &y1, &r2, &x2, &y2)

        if dist(x1, y1, x2, y2) <= (float64)(r1-r2) {
            fmt.Printf("RICO\n")
        } else {
            fmt.Printf("MORTO\n")
        }
    }
}
