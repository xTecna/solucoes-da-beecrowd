package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scanf("%d", &n)
	for i := 1; i < 4*n; i += 4 {
		fmt.Printf("%d %d %d PUM\n", i, i+1, i+2)
	}
}
