package main

import (
	"fmt"
	"sort"
)

func main() {
	var A,B,C int
	
	fmt.Scanf("%d %d %d\n", &A, &B, &C)

	campeonato := make([]int, 3)
	campeonato[0] = A
	campeonato[1] = B
	campeonato[2] = C
	sort.Ints(campeonato)

	fmt.Printf("%d\n", campeonato[1])
}
