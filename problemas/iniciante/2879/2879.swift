import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var vitorias = 0
for _ in 0..<n {
  let x = Int(readLine(strippingNewline: true)!)!
  if (x != 1) {
    vitorias += 1
  }
}

print(vitorias)