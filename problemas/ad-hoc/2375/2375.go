package main

import (
	"fmt"
)

func main() {
	var diametro, altura, largura, profundidade int

	fmt.Scanf("%d\n", &diametro)
	fmt.Scanf("%d %d %d\n", &altura, &largura, &profundidade)

	if diametro <= altura && diametro <= largura && diametro <= profundidade {
		fmt.Printf("S\n")
	} else {
		fmt.Printf("N\n")
	}
}
