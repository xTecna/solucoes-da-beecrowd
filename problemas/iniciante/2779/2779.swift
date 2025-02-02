import Foundation

let n = Int(readLine(strippingNewline: true)!)!
let m = Int(readLine(strippingNewline: true)!)!

var figurinhas = Set<Int>()
for _ in 0..<m {
  let x = Int(readLine(strippingNewline: true)!)!
  figurinhas.insert(x)
}

print(n - figurinhas.count)