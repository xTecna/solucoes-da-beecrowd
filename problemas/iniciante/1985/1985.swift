import Foundation

let precos = [0, 1.5, 2.5, 3.5, 4.5, 5.5]
let p = Int(readLine(strippingNewline: true)!)!

var valor = 0.0
for _ in 0..<p {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let codigo = Int(entrada[0])!
  let q = Int(entrada[1])!

  valor += precos[codigo - 1000] * Double(q)
}
print(String(format: "%.2f", valor))