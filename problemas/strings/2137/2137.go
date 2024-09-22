package main

import (
    "bufio"
    "fmt"
    "os"
    "sort"
    "strconv"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)

    for scanner.Scan() {
        n, _ := strconv.Atoi(scanner.Text())
        biblioteca := make([]string, n)
        
        for i := 0; i < n; i++ {
            scanner.Scan()
            biblioteca[i] = scanner.Text()
        }

        sort.Strings(biblioteca)

        for i := 0; i < n; i++ {
            fmt.Printf("%s\n", biblioteca[i])
        }
    }
}
