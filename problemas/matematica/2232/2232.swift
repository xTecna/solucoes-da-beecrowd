import Foundation

let t = Int(readLine(strippingNewline: true)!)!
for _ in 0..<t {
  let n = Int(readLine(strippingNewline: true)!)!
  print((1 << n) - 1)
}