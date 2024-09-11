import Foundation

let X = Int(readLine(strippingNewline: true)!)!
let Y = Double(readLine(strippingNewline: true)!)!

let resposta = Double(X)/Y
print(String(format: "%.3f km/l", resposta))
