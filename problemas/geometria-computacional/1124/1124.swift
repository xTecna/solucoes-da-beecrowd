import Foundation

func distancia(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
}

while (true) {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let l = Double(entrada[0])!
    let c = Double(entrada[1])!
    let r1 = Double(entrada[2])!
    let r2 = Double(entrada[3])!

    if (l == 0 && c == 0 && r1 == 0 && r2 == 0) {
        break
    }

    let x1 = r1
    let y1 = r1
    let x2 = l - r2
    let y2 = c - r2

    let dist = distancia(x1: x1, y1: y1, x2: x2, y2: y2)
    if (l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || dist < r1 + r2) {
        print("N")
    } else {
        print("S")
    }
}