import Foundation

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let codigo = Int(entrada[0])!
let quantidade = Int(entrada[1])!

let precos: [Double] = [4.00, 4.50, 5.00, 2.00, 1.50]
let resposta = Double(quantidade) * precos[codigo - 1]
print(String(format: "Total: R$ %.2f", resposta))