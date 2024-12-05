import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let h = Int(entrada[0])!
let p = Int(entrada[1])!

print(String(format: "%.2f", Double(h) / Double(p)))