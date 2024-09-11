import Foundation

let tempo = Int(readLine(strippingNewline: true)!)!
let velocidade = Int(readLine(strippingNewline: true)!)!

let resposta = Double(tempo * velocidade)/12.0

print(String(format: "%.3f", resposta))