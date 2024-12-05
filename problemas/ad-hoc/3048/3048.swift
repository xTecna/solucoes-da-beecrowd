import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var anterior = -1
var resposta = 0
for _ in 0..<n {
    let atual = Int(readLine(strippingNewline: true)!)!
    if (atual != anterior) {
        anterior = atual
        resposta += 1
    }
}

print(resposta)
