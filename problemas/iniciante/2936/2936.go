package main

import (
    "fmt"
)

func main() {
    var curupira, boitata, boto, mapinguari, iara int

    fmt.Scanf("%d\n", &curupira)
    fmt.Scanf("%d\n", &boitata)
    fmt.Scanf("%d\n", &boto)
    fmt.Scanf("%d\n", &mapinguari)
    fmt.Scanf("%d\n", &iara)

    fmt.Printf("%d\n", 225+300*curupira+1500*boitata+600*boto+1000*mapinguari+150*iara)
}
