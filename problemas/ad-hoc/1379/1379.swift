import Foundation

while (true) {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let a = Int(entrada[0])!
    let b = Int(entrada[1])!

    if (a == 0 && b == 0) {
        break
    }

    print(2 * a - b)
}