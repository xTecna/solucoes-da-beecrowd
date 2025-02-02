import Foundation

func substring(str: String, inicio: Int, fim: Int) -> String {
    let a = str.index(str.startIndex, offsetBy: inicio)
    let b = str.index(str.startIndex, offsetBy: fim)
    return String(str[a...b])
}

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
    let linha = readLine(strippingNewline: true)!
    let parte1 = Int(substring(str: linha, inicio: 2, fim: 3))!
    let parte2 = Int(substring(str: linha, inicio: 5, fim: 7))!
    let parte3 = Int(substring(str: linha, inicio: 11, fim: 12))!

    print(parte1 + parte2 + parte3)
}