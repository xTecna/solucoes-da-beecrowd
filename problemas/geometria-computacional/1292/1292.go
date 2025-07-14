package main

import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strconv"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        f, _ := strconv.ParseFloat(scanner.Text(), 64)
        lado := f * math.Sin(108*math.Pi/180) / math.Sin(63*math.Pi/180)
        fmt.Printf("%.10f\n", lado)
    }
}
