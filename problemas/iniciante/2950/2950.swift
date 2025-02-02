import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let n = Int(entrada[0])!
let x = Int(entrada[1])!
let y = Int(entrada[2])!

print(String(format: "%.2f", Float64(n) / Float64(x + y)))