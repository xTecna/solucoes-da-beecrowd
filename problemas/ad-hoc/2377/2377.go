package main

import (
	"fmt"
)

func main() {
	var L, D, K, P int

	fmt.Scanf("%d %d\n", &L, &D)
	fmt.Scanf("%d %d\n", &K, &P)

	fmt.Printf("%d\n", K*L+P*(L/D))
}
