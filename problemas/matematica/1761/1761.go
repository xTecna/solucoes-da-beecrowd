package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	var a, b, c float64

	scanner := bufio.NewScanner(os.Stdin)

	pi := 3.141592654
	for scanner.Scan() {
		fmt.Sscanf(scanner.Text(), "%f %f %f\n", &a, &b, &c)
		fmt.Printf("%.2f\n", 5.0 * (math.Tan(a * pi / 180.0) * b + c))
    }
}
