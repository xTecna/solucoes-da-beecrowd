import Foundation

func converteParaDecimal(n: String) -> Int {
    var resposta = 0
    var potencia = 0
    let fatoriais = [1, 2, 6, 24, 120]

    for digito in n.reversed() {
        resposta += (Int(digito.asciiValue!) - Int(Character("0").asciiValue!)) * fatoriais[potencia
        potencia += 1
    }

    return resposta
}

while true {
    if let n = readLine(strippingNewline: true), n != "0" {
        print(converteParaDecimal(n: n))
    } else {
        break
    }
}
