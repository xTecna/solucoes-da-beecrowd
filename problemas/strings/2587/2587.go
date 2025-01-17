package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var palavra1, palavra2, secreta string

	fmt.Scanf("%d\n", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%s\n%s\n%s\n", &palavra1, &palavra2, &secreta)

		pos1 := strings.Index(secreta, "_")
		pos2 := strings.LastIndex(secreta, "_")

		if palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1] {
			fmt.Printf("Y\n")
		} else {
			fmt.Printf("N\n")
		}
	}
}
