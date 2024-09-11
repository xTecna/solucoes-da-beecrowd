import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in 0..<n {
  let m = 1 + 4 * i
  print(String(format: "%d %d %d PUM", m, m + 1, m + 2))
}
