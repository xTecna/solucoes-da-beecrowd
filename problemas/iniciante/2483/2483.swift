import Foundation

let n = Int(readLine(strippingNewline: true)!)!
var resposta = "Feliz nat"
for _ in 1...n {
  resposta += "a"
}
resposta += "l!"

print(resposta)