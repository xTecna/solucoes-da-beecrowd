import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Int(entrada[0])!
  let y = Int(entrada[1])!

  if (y == 0) {
    print("divisao impossivel")
  } else {
    print(String(format: "%.1f", Double(x) / Double(y)))
  }
}