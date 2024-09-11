import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for i in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let a = Double(entrada[0])!
  let b = Double(entrada[1])!
  let c = Double(entrada[2])!

  print(String(format: "%.1f", (2.0 * a + 3.0 * b + 5.0 * c) / 10.0))
}