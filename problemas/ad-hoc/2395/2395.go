package main

import (
	"fmt"
)

func main() {
	var A,B,C,X,Y,Z int
	
	fmt.Scanf("%d %d %d\n", &A, &B, &C)
	fmt.Scanf("%d %d %d\n", &X, &Y, &Z)
	
	fmt.Printf("%d\n", (X / A) * (Y / B) * (Z / C))
}
