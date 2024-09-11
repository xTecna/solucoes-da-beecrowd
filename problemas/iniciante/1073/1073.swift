import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in stride(from: 2, to: n + 1, by: 2) {
  print(String(format: "%d^2 = %d", i, i * i))
}