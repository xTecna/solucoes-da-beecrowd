package main

import (
	"fmt"
	"math"
)

func dist(x1, y1, x2, y2 int64) float64 {
	return math.Sqrt((float64)((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1)))
}

func main() {
	var L, C, r1, r2 int64

	for {
		fmt.Scanf("%d %d %d %d\n", &L, &C, &r1, &r2)
		if (L == 0 && C == 0 && r1 == 0 && r2 == 0) {
			break
		}

		x1 := r1
		y1 := r1
		x2 := L - r2
		y2 := C - r2

		distancia := dist(x1, y1, x2, y2)
		if L < 2 * r1 || C < 2 * r1 || L < 2 * r2 || C < 2 * r2 || distancia < (float64)(r1 + r2) {
			fmt.Printf("N\n")
		} else {
			fmt.Printf("S\n")
		}
	}
}
