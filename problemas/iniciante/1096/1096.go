package main

import (
    "fmt"
)

func main() {
    for i := 1; i <= 9; i += 2 {
    for j := 7; j > 4; j-- {
      fmt.Printf("I=%d J=%d\n", i, j)
    }
  }
}
