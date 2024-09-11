import Foundation

var pares = 0
var impares = 0
var positivos = 0
var negativos = 0
for _ in 0..<5 {
  let numero = Int(readLine(strippingNewline: true)!)!
  if (numero % 2 == 0) {
    pares += 1
  } else {
    impares += 1
  }
  if (numero > 0) {
    positivos += 1
  } else if (numero < 0) {
    negativos += 1
  }
}

print(String(format: "%d valor(es) par(es)", pares))
print(String(format: "%d valor(es) impar(es)", impares))
print(String(format: "%d valor(es) positivo(s)", positivos))
print(String(format: "%d valor(es) negativo(s)", negativos))