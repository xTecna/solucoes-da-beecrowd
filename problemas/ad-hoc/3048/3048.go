package main

import (
	"fmt"
)

func main() {
	var N, atual, anterior, resposta int

	fmt.Scanf("%d", &N)

	anterior = -1
	resposta = 0
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &atual)

		if atual != anterior {
			anterior = atual
			resposta += 1
		}
	}

	fmt.Printf("%d\n", resposta)
}
