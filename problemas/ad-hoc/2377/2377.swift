import Foundation

var entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let l = Int(entrada[0])!
let d = Int(entrada[1])!

entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let k = Int(entrada[0])!
let p = Int(entrada[1])!

print(k * l + p * (l / d))
