package main

import (
	"fmt"
	"strconv"
)

func main() {
	var c, b, e int

	fmt.Scanf("%d\n", &c)
	for i := 0; i < c; i++ {
		fmt.Scanf("%d %d\n", &b, &e)

		resposta := ""
		for j := b; j <= e; j++ {
			resposta += strconv.Itoa(j)
		}
		for j := len(resposta) - 1; j > -1; j-- {
			resposta += string(resposta[j])
		}

		fmt.Printf("%s\n", resposta)
	}
}
