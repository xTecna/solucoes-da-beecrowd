package main

import (
	"fmt"
)

func main() {
	var n, letra int

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%X", &letra)
		fmt.Printf("%c", letra)
	}
	fmt.Printf("\n")
}
