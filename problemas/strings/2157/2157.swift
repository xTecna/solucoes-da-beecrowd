import Foundation

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let b = Int(entrada[0])!
    let e = Int(entrada[1])!

    var resposta = ""
    for i in b...e {
        resposta += String(i)
    }
    resposta += resposta.reversed()

    print(resposta)
}