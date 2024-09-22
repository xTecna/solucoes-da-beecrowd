import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let c = Int(entrada[0])!
let n = Int(entrada[1])!

print(c % n)