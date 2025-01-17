import Foundation

let n = Int(readLine(strippingNewline: true)!)!

let regex = try! NSRegularExpression(pattern: "a+")
for _ in 0..<n {
    let hamekame = readLine(strippingNewline: true)!

    let range = NSRange(hamekame.startIndex..<hamekame.endIndex, in: hamekame)
    let matches = regex.matches(in: hamekame, range: range)

    let tamanho1 = matches.first!.range.length
    let tamanho2 = matches.last!.range.length

    var resposta = "k"
    for _ in 0..<(tamanho1 * tamanho2) {
        resposta += "a"
    }
    print(resposta)
}