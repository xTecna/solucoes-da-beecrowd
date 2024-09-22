import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Int(entrada[0])!
  let y = Int(entrada[1])!

  print(String(format: "%d cm2", (x * y) / 2))
}