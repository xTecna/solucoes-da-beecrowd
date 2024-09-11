import Foundation

var senha = Int(readLine(strippingNewline: true)!)!
while (senha != 2002) {
  print("Senha Invalida")
  senha = Int(readLine(strippingNewline: true)!)!
}
print("Acesso Permitido")