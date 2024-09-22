import Foundation

let n = Int(readLine(strippingNewline: true)!)!
var resposta = "Ho"
for _ in 2...n {
  resposta += " Ho"
}
resposta += "!"

print(resposta)