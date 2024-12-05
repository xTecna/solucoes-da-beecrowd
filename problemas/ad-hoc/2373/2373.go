package main

import (
	"fmt"
)

func main() {
	var n, latas, copos int

	fmt.Scanf("%d\n", &n)

	resposta := 0
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d\n", &latas, &copos)

		if latas > copos {
			resposta += copos
		}
	}

	fmt.Printf("%d\n", resposta)
}
