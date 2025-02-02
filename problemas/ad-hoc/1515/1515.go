package main

import (
	"fmt"
)

func main() {
	var planeta, resposta string
	var n, ano, tempo, menor_ano int

	for {
		fmt.Scanf("%d\n", &n)
		if (n == 0) {
			break
		}

		resposta = ""
		menor_ano = 9999
		for i := 0; i < n; i++ {
			fmt.Scanf("%s %d %d\n", &planeta, &ano, &tempo)

			if (ano - tempo < menor_ano) {
				resposta = planeta
				menor_ano = ano - tempo
			}
		}

		fmt.Printf("%s\n", resposta)
	}
}
