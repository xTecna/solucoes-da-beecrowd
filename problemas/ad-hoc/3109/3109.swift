import Foundation

let n = Int(readLine(strippingNewline: true)!)!
var mesas: [Int] = []
for i in 0...n {
    mesas.append(i)
}

let q = Int(readLine(strippingNewline: true)!)!
for _ in 0..<q {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let e = Int(entrada[0])!
    let a = Int(entrada[1])!

    if (e == 1) {
        let b = Int(entrada[2])!

        let temp = mesas[a]
        mesas[a] = mesas[b]
        mesas[b] = temp
    } else {
        var resposta = 0
        var mesa = mesas[a]

        while (mesa != a) {
            resposta += 1
            mesa = mesas[mesa]
        }

        print(resposta)
    }
}