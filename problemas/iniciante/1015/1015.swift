import Foundation

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let x1 = Double(entrada[0])!
let y1 = Double(entrada[1])!
entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let x2 = Double(entrada[0])!
let y2 = Double(entrada[1])!

let distancia = sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))
print(String(format: "%.4f", distancia))
