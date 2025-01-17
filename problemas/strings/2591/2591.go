package main

import (
	"fmt"
	"regexp"
)

func main() {
	var n int
	var hamekame string

	fmt.Scanf("%d\n", &n)

	regex, _ := regexp.Compile("a+")

	for i := 0; i < n; i++ {
		fmt.Scanf("%s\n", &hamekame)

		matches := regex.FindAllString(hamekame, -1)
		tamanho1 := len(matches[0])
		tamanho2 := len(matches[1])

		fmt.Printf("k")
		for j := 0; j < (tamanho1 * tamanho2); j++ {
			fmt.Printf("a")
		}
		fmt.Printf("\n")
	}
}
