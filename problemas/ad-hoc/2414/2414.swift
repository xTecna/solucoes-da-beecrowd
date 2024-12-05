import Foundation

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ")

var maior = Int(numeros[0])!
for numero in numeros {
    maior = max(maior, Int(numero)!)
}

print(maior)
