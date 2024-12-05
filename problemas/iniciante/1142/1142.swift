import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in stride(from: 1, to: 4*n, by: 4) {
  print(String(format: "%d %d %d PUM", i, i + 1, i + 2))
}
