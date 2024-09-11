import Foundation

let x = Int(readLine(strippingNewline: true)!)!
let y = Int(readLine(strippingNewline: true)!)!

let a = min(x, y)
let b = max(x, y)

var soma = 0
for i in a...b {
  if i % 13 != 0 {
    soma += i
  }
}

print(soma)