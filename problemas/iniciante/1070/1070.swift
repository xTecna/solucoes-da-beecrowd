import Foundation

var x = Int(readLine(strippingNewline: true)!)!
x += 1 - (x % 2)

for i in 0..<6 {
  print(x + (2 * i))
}