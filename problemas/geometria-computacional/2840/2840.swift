import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let r = Int(entrada[0])!
let l = Int(entrada[1])!

let pi = 3.1415
let v = (4.0 * pi * Double(r) * Double(r) * Double(r)) / 3.0

print(String(format: "%d", Int(Double(l) / v)))