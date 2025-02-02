package main

import (
	"fmt"
)

func main() {
	var n, x, atual, anterior int

	fmt.Scanf("%d %d\n", &n, &x)

	resposta := 1
	acumulado := 1

	fmt.Scanf("%d", &anterior)
	for i := 1; i < n; i++ {
		fmt.Scanf("%d", &atual)

		if (atual - anterior <= x) {
			acumulado += 1
		} else {
			if (acumulado > resposta) {
				resposta = acumulado
			}
			acumulado = 1
		}

		anterior = atual
	}

	if (acumulado > resposta) {
		resposta = acumulado
	}

	fmt.Printf("%d\n", resposta)
}
