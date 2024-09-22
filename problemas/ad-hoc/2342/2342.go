package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

func main() {
    var n, p, q int
    var c string

    fmt.Scanf("%d\n", &n)

    reader := bufio.NewReader(os.Stdin)
    line, _ := reader.ReadString('\n')
    palavras := strings.Fields(line)
    p, _ = strconv.Atoi(palavras[0])
    c = palavras[1]
    q, _ = strconv.Atoi(palavras[2])

    if c == "+" {
        if p+q <= n {
            fmt.Println("OK")
        } else {
            fmt.Println("OVERFLOW")
        }
    } else {
        if p*q <= n {
            fmt.Println("OK")
        } else {
            fmt.Println("OVERFLOW")
        }
    }
}
