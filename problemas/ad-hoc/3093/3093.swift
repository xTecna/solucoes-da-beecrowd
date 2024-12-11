import Foundation

let n = Int(readLine(strippingNewline: true)!)!

for _ in 0..<n {
    let cartas = readLine(strippingNewline: true)!

    if cartas.contains("A") && cartas.contains("K") && cartas.contains("Q") && cartas.contains("J") {
        print("Aaah muleke")
    } else {
        print("Ooo raca viu")
    }
}