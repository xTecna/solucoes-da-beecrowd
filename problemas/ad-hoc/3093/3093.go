package main

import (
	"fmt"
	"strings"
)

func main() {
	var N int
	var cartas string

	fmt.Scanf("%d\n", &N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%s\n", &cartas)

		if strings.Contains(cartas, "A") && strings.Contains(cartas, "K") && strings.Contains(cartas, "Q") && strings.Contains(cartas, "J") {
			fmt.Printf("Aaah muleke\n")
		} else {
			fmt.Printf("Ooo raca viu\n")
		}
	}
}
