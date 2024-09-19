import Foundation

let t = Int(readLine(strippingNewline: true)!)!
for i in 0..<1000 {
  print(String(format: "N[%d] = %d", i, i % t))
}