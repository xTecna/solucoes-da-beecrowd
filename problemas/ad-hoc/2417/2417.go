package main

import (
	"fmt"
)

func main() {
	var cv, ce, cs, fv, fe, fs int

	fmt.Scanf("%d %d %d %d %d %d\n", &cv, &ce, &cs, &fv, &fe, &fs)

	cp := 10000 * (3 * cv + ce) + cs
	fp := 10000 * (3 * fv + fe) + fs

	if (cp > fp) {
		fmt.Printf("C\n")
	} else if (fp > cp) {
		fmt.Printf("F\n")
	} else {
		fmt.Printf("=\n")
	}
}
