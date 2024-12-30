import Foundation

let n = Int(readLine(strippingNewline: true)!)!
var letras = readLine(strippingNewline: true)!.components(separatedBy: " ")

var resposta = ""
for i in 0..<n {
    let letra = Int(letras[i], radix: 16)!
    resposta += "\(Character(UnicodeScalar(letra)!))"
}

print(resposta)