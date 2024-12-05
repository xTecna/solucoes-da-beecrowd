package main

import (
	"fmt"
	"math"
)

func main() {
	var maior, numero int

	maior = 0
	for {
		fmt.Scanf("%d", &numero)
		if numero == 0 {
			break
		}

		maior = int(math.Max(float64(maior), float64(numero)))
	}

	fmt.Printf("%d\n", maior)
}
