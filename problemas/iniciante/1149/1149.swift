import Foundation

func somaPA(a1: Int, an: Int, n: Int) -> Int {
  return ((a1 + an) * n)/2
}

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int 
let a = numeros[0]
var i = 1
while numeros[i] <= 0 {
  i += 1
}
let n = numeros[i]

