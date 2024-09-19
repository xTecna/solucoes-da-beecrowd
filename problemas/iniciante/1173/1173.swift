import Foundation

var x = Int(readLine(strippingNewline: true)!)!
for i in 0...9 {
  print(String(format: "N[%d] = %d", i, x))
  x *= 2
}