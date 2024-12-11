import Foundation

let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
let a = Int(entrada[0])!
let b = Int(entrada[1])!
let c = Int(entrada[2])!

if (a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a) {
  print("S")
} else {
  print("N")
}