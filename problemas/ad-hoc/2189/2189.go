package main

import (
	"fmt"
)

func main() {
	var n, numero int

	teste := 1
	for {
		fmt.Scanf("%d", &n)

		if n == 0 {
			break
		}

		resposta := -1
		for i := 0; i < n; i++ {
			fmt.Scanf("%d", &numero)
			if i+1 == numero {
				resposta = i + 1
			}
		}

		fmt.Printf("Teste %d\n%d\n\n", teste, resposta)
		teste += 1
	}
}
