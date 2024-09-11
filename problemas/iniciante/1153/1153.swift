import Foundation

var f = Array(repeating: -1, count: 14)
f[1] = 1

func fatorial(n: Int) -> Int {
  if (f[n] == -1){
    f[n] = n * fatorial(n: n - 1)
  }
  return f[n]
}

let n = Int(readLine(strippingNewline: true)!)!
print(fatorial(n: n))