import Foundation

func somaPA(a1: Int, an: Int, n: Int) -> Int {
    return (n * (a1 + an)) / 2
}

let t = Int(readLine(strippingNewline: true)!)!

for _ in 0..<t {
    let n = Int(readLine(strippingNewline: true)!)!
    print(somaPA(a1: 1, an: n, n: n) + 1)
}