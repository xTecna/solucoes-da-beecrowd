package main

import (
    "bufio"
    "fmt"
    "os"
    "sort"
    "strings"
)

func main() {
    var n, k int

    fmt.Scanf("%d %d\n", &n, &k)

    alunos := make([]string, n)
    reader := bufio.NewReader(os.Stdin)
    for i := 0; i < n; i++ {
        line, _ := reader.ReadString('\n')
        alunos[i] = strings.TrimSpace(line)
    }
    sort.Strings(alunos)

    fmt.Printf("%s\n", alunos[k-1])
}
