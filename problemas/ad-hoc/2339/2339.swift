import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let c = Int(entrada[0])!
let p = Int(entrada[1])!
let f = Int(entrada[2])!

if (p >= c * f) {
  print("S")
} else {
  print("N")
}