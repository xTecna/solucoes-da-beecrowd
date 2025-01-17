package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	var P, G float64

	fmt.Scanf("%d\n", &N)

	menor_preco := 1000.0
	for i := 0; i < N; i++ {
		fmt.Scanf("%f %f\n", &P, &G)

		menor_preco = math.Min(menor_preco, P / G)
	}
	
	fmt.Printf("%.2f\n", 1000 * menor_preco)
}
