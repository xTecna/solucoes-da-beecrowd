import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in 1...10 {
  print(String(format: "%d x %d = %d", i, n, i * n))
}