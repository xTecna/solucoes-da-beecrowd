import Foundation

let C = Int(readLine(strippingNewline: true)!)!
let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ")

var resposta = 0
for i in 0..<C {
    resposta += Int(numeros[i])!
}

print(resposta)
