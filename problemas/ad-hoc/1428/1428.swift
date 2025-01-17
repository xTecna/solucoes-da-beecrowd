import Foundation

let t = Int(readLine(strippingNewline: true)!)!

for _ in 0..<t {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let n = Int(entrada[0])!
    let m = Int(entrada[1])!

    print(String(format: "%.0f", ceil(Double(n - 2) / 3.0) * ceil(Double(m - 2) / 3.0)))
}