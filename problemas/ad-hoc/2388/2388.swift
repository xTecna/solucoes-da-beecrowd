import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var resposta = 0
for _ in 0..<n {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    resposta += Int(entrada[0])! * Int(entrada[1])!
}

print(resposta)
