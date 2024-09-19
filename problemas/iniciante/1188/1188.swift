import Foundation

let t = readLine(strippingNewline: true)!

var m = [[Double]](repeating: [Double](repeating: 0, count: 12), count: 12)
for i in 0..<12 {
  for j in 0..<12 {
    m[i][j] = Double(readLine(strippingNewline: true)!)!
  }
}

var media = 0.0
var quantidade = 0
for i in 7..<12 {
  for j in (12-i)..<i {
    media += m[i][j]
    quantidade += 1
  }
}

if (t == "M") {
  media /= Double(quantidade)
}

print(String(format: "%.1f", media))