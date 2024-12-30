import Foundation

func imprimeTriangulo(tamanho: Int, deslocamento: Int) {
    var espacos = tamanho / 2 + deslocamento
    var asteriscos = 1

    while (asteriscos <= tamanho) {
        var linha = ""

        for _ in 0..<espacos {
            linha += " "
        }
        for _ in 0..<asteriscos {
            linha += "*"
        }

        print(linha)
        asteriscos += 2
        espacos -= 1
    }
}

while let linha = readLine(strippingNewline: true) {
    let n = Int(linha)!

    imprimeTriangulo(tamanho: n, deslocamento: 0)
    imprimeTriangulo(tamanho: 3, deslocamento: n / 2 - 1)
    print("")
}