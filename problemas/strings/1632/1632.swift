import Foundation

func variacoes(letra: Character) -> Int {
    if (letra == "A" || letra == "E" || letra == "I" || letra == "O" || letra == "S") {
        return 3
    } else {
        return 2
    }
}

let n = Int(readLine(strippingNewline: true)!)!

for _ in 0..<n {
    let senha = readLine(strippingNewline: true)!.uppercased()

    var resposta = 1
    for i in 0..<senha.count {
        resposta *= variacoes(letra: senha[senha.index(senha.startIndex, offsetBy: i)])
    }
    print(resposta)
}