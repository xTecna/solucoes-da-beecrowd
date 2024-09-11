import Foundation

func quantidadeImpares(x: Int, y: Int) -> Int {
  return (y - x) / 2 + 1
}

func somaPA(a1: Int, an: Int, n: Int) -> Int {
  return (a1 + an) * n / 2
}

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Int(entrada[0])!
  let y = Int(entrada[1])!

  var a = min(x, y)
  var b = max(x, y)

  a += abs(a) % 2 + 1
  b -= abs(b) % 2 + 1

  if (a > b) {
    print(0)
  } else {
    print(somaPA(a1: a, an: b, n: quantidadeImpares(x: a, y: b)))
  }
}