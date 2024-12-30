package main

import (
	"bufio"
	"fmt"
	"os"
)

func imprimeTriangulo(tamanho int, deslocamento int) {
	espacos := tamanho / 2 + deslocamento
	for asteriscos := 1; asteriscos <= tamanho; asteriscos += 2 {
		for i := 0; i < espacos; i++ {
			fmt.Printf(" ")
		}
		for i := 0; i < asteriscos; i++ {
			fmt.Printf("*")
		}
		fmt.Printf("\n")
		espacos -= 1
	}
}

func main() {
	var n int

	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		fmt.Sscanf(scanner.Text(), "%d", &n)

		imprimeTriangulo(n, 0)
		imprimeTriangulo(3, n/2 - 1)
		fmt.Printf("\n")
    }
}