package main

import (
	"fmt"
	"math"
)

func main() {
	var t, n, m int

	fmt.Scanf("%d\n", &t)

	for i := 0; i < t; i++ {
		fmt.Scanf("%d %d\n", &n, &m)

		fmt.Printf("%d\n", int(math.Ceil(float64(n - 2) / 3.0) * math.Ceil(float64(m - 2) / 3.0)))
	}
}
