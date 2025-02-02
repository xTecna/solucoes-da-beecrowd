package main

import (
	"fmt"
)

func main() {
	var n, q, e, a, b int

	fmt.Scanf("%d\n%d\n", &n, &q)

	mesas := make([]int, n + 1)
	for i := 0; i <= n; i++ {
		mesas[i] = i
	}

	for i := 0; i < q; i++ {
		fmt.Scanf("%d %d", &e, &a)

		if(e == 1) {
			fmt.Scanf("%d", &b)

			temp := mesas[a]
			mesas[a] = mesas[b]
			mesas[b] = temp
		} else {
			resposta := 0

			mesa := mesas[a]
			for(mesa != a) {
				resposta += 1
				mesa = mesas[mesa]
			}

			fmt.Printf("%d\n", resposta)
		}
	}
}
