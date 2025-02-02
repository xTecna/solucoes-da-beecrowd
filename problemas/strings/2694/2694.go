package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N int
	var linha string

	fmt.Scanf("%d\n", &N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%s\n", &linha)

		parte1, _ := strconv.Atoi(linha[2:4])
		parte2, _ := strconv.Atoi(linha[5:8])
		parte3, _ := strconv.Atoi(linha[11:13])

		fmt.Printf("%d\n", parte1 + parte2 + parte3)
	}
}
