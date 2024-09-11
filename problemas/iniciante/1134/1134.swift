import Foundation

var alcool = 0
var gasolina = 0
var diesel = 0

while true {
  let codigo = Int(readLine(strippingNewline: true)!)!

  if(codigo == 1){
    alcool += 1
  }else if(codigo == 2){
    gasolina += 1
  }else if(codigo == 3){
    diesel += 1
  }else if(codigo == 4){
    break
  }
}

print("MUITO OBRIGADO")
print(String(format: "Alcool: %d", alcool))
print(String(format: "Gasolina: %d", gasolina))
print(String(format: "Diesel: %d", diesel))