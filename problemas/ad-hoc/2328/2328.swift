import Foundation

let n = Int(readLine(strippingNewline: true)!)!
let divisoes = readLine(strippingNewline: true)!.components(separatedBy: " ")

var resposta = 0
for i in 0..<n {
    resposta += Int(divisoes[i])!
}

print(resposta - n)
