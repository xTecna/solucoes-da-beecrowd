package main

import (
	"fmt"
)

func main() {
	var B,T int
	
	fmt.Scanf("%d\n%d\n", &B, &T)

	if (B + T > 160) {
		fmt.Printf("1\n")
	} else if (B + T < 160) {
		fmt.Printf("2\n")
	} else {
		fmt.Printf("0\n")
	}
}
