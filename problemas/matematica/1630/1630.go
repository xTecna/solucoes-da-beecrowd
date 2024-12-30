package main

import (
	"bufio"
	"fmt"
	"os"
)

func MDC(a, b int) int {
	if b == 0 {
		return a
	}
	return MDC(b, a%b)
}

func main() {
	var X, Y int

	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		fmt.Sscanf(scanner.Text(), "%d %d\n", &X, &Y)
		fmt.Printf("%d\n", 2*(X/MDC(X, Y)+Y/MDC(X, Y)))
	}
}
