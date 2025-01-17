import Foundation

let n = Int(readLine(strippingNewline: true)!)!

for _ in 0..<n {
    let palavra1 = readLine(strippingNewline: true)!
    let palavra2 = readLine(strippingNewline: true)!
    let secreta = readLine(strippingNewline: true)!

    let pos1 = secreta.firstIndex(of: "_")!
    let pos2 = secreta.lastIndex(of: "_")!

    if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
        print("Y")
    } else {
        print("N")
    }
}