package main

import (
	"fmt"
)

func somaPA(a1, an, n int) int {
	return (n * (a1 + an)) / 2
}

func main() {
	var t, n int

	fmt.Scanf("%d\n", &t)

	for i := 0; i < t; i++ {
		fmt.Scanf("%d\n", &n)
		fmt.Printf("%d\n", somaPA(1, n, n)+1)
	}
}
