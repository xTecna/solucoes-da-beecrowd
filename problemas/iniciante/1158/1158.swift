import Foundation

func somaPA(a1: Int, an: Int, n: Int) -> Int {
  return ((a1 + an) * n)/2
}

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let numeros = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap { Int 
  var x = numeros[0]
  let y = numeros[1]

  x += 1 - (x % 2)

  print(somaPA(a1: x, an: x + 2 * (y - 1), n: y))
