import Foundation

var f = Array(repeating: -1, count: 101)
f[1] = 1

func feynman(n: Int) -> Int {
  if (f[n] == -1){
    f[n] = feynman(n: n - 1) + (n * n)
  }
  return f[n]
}


while (true) {
  let n = Int(readLine(strippingNewline: true)!)!

  if (n == 0) {
    break
  }

  print(feynman(n: n))
}