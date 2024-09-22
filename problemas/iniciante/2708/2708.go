package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)

    pessoas := 0
    jipes := 0
    for scanner.Scan() {
        parts := strings.Split(scanner.Text(), " ")

        if len(parts) == 1 && parts[0] == "ABEND" {
            break
        }

        acao := parts[0]
        numero, _ := strconv.Atoi(parts[1])

        if acao == "SALIDA" {
            pessoas += numero
            jipes += 1
        } else {
            pessoas -= numero
            jipes -= 1
        }
    }

    fmt.Printf("%d\n", pessoas)
    fmt.Printf("%d\n", jipes)
}
