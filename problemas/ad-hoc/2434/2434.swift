import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let n = Int(entrada[0])!
var saldo = Int(entrada[1])!

var resposta = saldo
for _ in 0..<n {
    let movimentacao = Int(readLine(strippingNewline: true)!)!
    saldo += movimentacao

    resposta = min(resposta, saldo)
}

print(resposta)