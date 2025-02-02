import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let n = Int(entrada[0])!
let x = Int(entrada[1])!

let alturas = readLine(strippingNewline: true)!.components(separatedBy: " ")

var resposta = 1
var acumulado = 1
for i in 1..<n {
    if (Int(alturas[i])! - Int(alturas[i - 1])! <= x) {
        acumulado += 1
    } else {
        resposta = max(resposta, acumulado)
        acumulado = 1
    }
}
resposta = max(resposta, acumulado)

print(resposta)