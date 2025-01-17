package main

import (
	"fmt"
)

func main() {
	var N, x int
	
	fmt.Scanf("%d", &N)

	resposta := 0
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &x)
		resposta += x
	}
	
	fmt.Printf("%d\n", resposta - N)
}
