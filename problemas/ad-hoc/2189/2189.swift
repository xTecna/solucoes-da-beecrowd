import Foundation

var teste = 1
while (true) {
    let n = Int(readLine(strippingNewline: true)!)!

    if (n == 0) {
        break
    }

    var numeros = readLine(strippingNewline: true)!.components(separatedBy: " ")

    var resposta = -1
    for i in 0..<n {
        if (i + 1 == Int(numeros[i])!) {
            resposta = i + 1
        }
    }

    print("Teste " + String(teste))
    print(resposta)
    print("")

    teste += 1
}