package main

import (
	"fmt"
)

func main() {
	var n, teste int

	teste = 1
	for {
		fmt.Scanf("%d\n", &n)
		if (n == -1) {
			break
		}

		fmt.Printf("Experiment %d: %d full cycle(s)\n", teste, n / 2)
		teste += 1
	}
}
