import Foundation

let n = Int(readLine(strippingNewline: true)!)!

for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let n = Int(entrada[0])!
  let k = Int(entrada[1])!

  print(n / k + n % k)
}