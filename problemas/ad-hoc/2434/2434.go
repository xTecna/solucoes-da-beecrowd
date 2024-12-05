package main

import (
	"fmt"
	"math"
)

func main() {
	var n, saldo, movimentacao int

	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &saldo)

	resposta := saldo
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &movimentacao)
		saldo += movimentacao

		resposta = int(math.Min(float64(resposta), float64(saldo)))
	}

	fmt.Printf("%d\n", resposta)
}
