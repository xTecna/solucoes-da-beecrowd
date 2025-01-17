package main

import (
	"fmt"
)

func main() {
	var n int
	
	fmt.Scanf("%d\n", &n)

	grito := ""
	for i := 0; i < n; i++ {
		grito += "a"
	}
	
	fmt.Printf("Ent%so eh N%st%sl!\n", grito, grito, grito)
}
