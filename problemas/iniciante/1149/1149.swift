import Foundation

func somaPA(a1: Int, an: Int, n: Int) -> Int {
  return ((a1 + an) * n)/2
}

let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int($0) }
let a = numeros[0]
var i = 1
while numeros[i] <= 0 {
  i += 1
}
let n = numeros[i]

print(somaPA(a1: a, an: a + n - 1, n: n))