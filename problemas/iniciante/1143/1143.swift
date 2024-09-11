import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in 1...n {
  print(String(format: "%d %d %d", i, i * i, i * i * i))
}