import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var menor_preco = 1000.0
for _ in 0..<n {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let p = Double(entrada[0])!
    let g = Double(entrada[1])!

    menor_preco = min(menor_preco, p / g)
}

print(String(format: "%.2f", 1000 * menor_preco))