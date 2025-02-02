import Foundation

while true {
    let n = Int(readLine(strippingNewline: true)!)!
    if n == 0 {
        break
    }

    let limite = Int(floor(log10(Double(1 << (2 * n - 2)))) + 1)
    for i in 0..<n {
        var resposta = String(repeating: " ", count: limite - String(1 << i).count) + String(1 << i)
        for j in 1..<n {
            resposta += String(repeating: " ", count: limite + 1 - String(1 << (i + j)).count) + String(1 << (i + j))
        }
        print(resposta)
    }
    print("")
}
