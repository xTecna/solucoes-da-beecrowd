package main

import (
    "fmt"
)

func main() {
    var segundos,minutos,horas int

    fmt.Scanf("%d", &segundos)

    horas = segundos / 3600
    segundos %= 3600
    minutos = segundos / 60
    segundos %= 60  

    fmt.Printf("%d:%d:%d\n", horas, minutos, segundos)
}
