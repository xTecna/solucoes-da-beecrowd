package main

import (
    "fmt"
)

func main() {
    linha := "---------------------------------------"
    fmt.Printf("%s\n", linha)
    for i := 0; i < 5; i++ {
        fmt.Printf("|                                     |\n")
    }
    fmt.Printf("%s\n", linha)
}
