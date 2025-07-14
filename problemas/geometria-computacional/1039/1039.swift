import Foundation

func distancia(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
}

while let linha = readLine(strippingNewline: true) {
    let entrada = linha.components(separatedBy: " ")
    let r1 = Double(entrada[0])!
    let x1 = Double(entrada[1])!
    let y1 = Double(entrada[2])!
    let r2 = Double(entrada[3])!
    let x2 = Double(entrada[4])!
    let y2 = Double(entrada[5])!

    let dist = distancia(x1: x1, y1: y1, x2: x2, y2: y2)
    if (dist <= r1 - r2) {
        print("RICO")
    } else {
        print("MORTO")
    }
}