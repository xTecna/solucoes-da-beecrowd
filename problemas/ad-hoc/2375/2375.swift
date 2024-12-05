import Foundation

let diametro = Int(readLine(strippingNewline: true)!)!

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let altura = Int(entrada[0])!
let largura = Int(entrada[1])!
let profundidade = Int(entrada[2])!

if (diametro <= altura && diametro <= largura && diametro <= profundidade) {
    print("S")
} else {
    print("N")
}