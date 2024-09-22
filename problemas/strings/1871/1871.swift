import Foundation

while (true) {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let m = Int(entrada[0])!
  let n = Int(entrada[1])!

  if (m == 0 && n == 0) {
    break
  }

  let soma = String(m + n).replacingOccurrences(of: "0", with: "")
  print(soma)
}