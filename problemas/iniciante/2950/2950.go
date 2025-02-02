package main

import "fmt"

func main() {
    var n, x, y int

    fmt.Scanf("%d %d %d", &n, &x, &y)
    fmt.Printf("%.2f\n", float64(n)/float64(x+y))
}
