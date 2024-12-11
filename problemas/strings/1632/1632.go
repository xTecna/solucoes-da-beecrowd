package main

import (
	"fmt"
	"strings"
)

func variacoes(letra string) int {
	if letra == "A" || letra == "E" || letra == "I" || letra == "O" || letra == "S" {
		return 3
	} else {
		return 2
	}
}

func main() {
	var N int
	var senha string

	fmt.Scanf("%d\n", &N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%s\n", &senha)
		senha = strings.ToUpper(senha)

		resposta := 1
		for j := 0; j < len(senha); j++ {
			resposta *= variacoes(string(senha[j]))
		}
		fmt.Printf("%d\n", resposta)
	}
}
