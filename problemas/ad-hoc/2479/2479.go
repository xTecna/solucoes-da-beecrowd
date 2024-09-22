package main

import (
    "bufio"
    "fmt"
    "os"
    "sort"
    "strings"
)

func main() {
    var n, levadas, comportadas int

    fmt.Scanf("%d\n", &n)

    levadas = 0
    comportadas = 0
    criancas := make([]string, n)
    reader := bufio.NewReader(os.Stdin)
    for i := 0; i < n; i++ {
        line, _ := reader.ReadString('\n')
        palavras := strings.Fields(line)

        if palavras[0] == "+" {
            comportadas += 1
        } else {
            levadas += 1
        }

        criancas[i] = strings.TrimSpace(palavras[1])
    }
    sort.Strings(criancas)

    for i := 0; i < n; i++ {
        fmt.Printf("%s\n", criancas[i])
    }
    fmt.Printf("Se comportaram: %d | Nao se comportaram: %d\n", comportadas, levadas)
}
