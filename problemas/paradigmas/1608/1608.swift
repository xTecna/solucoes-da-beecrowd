import Foundation

let T = Int(readLine(strippingNewline: true)!)!
for _ in 1...T {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let D = Int(entrada[0])!
    let B = Int(entrada[2])!

    let ingredientes = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap {
        Int($0)
    }

    var resposta = 0
    for _ in 0..<B {
        let receita = readLine(strippingNewline: true)!.components(separatedBy: " ").compactMap {
            Int($0)
        }
        let quantidade_ingrediente = receita[0]

        var custo_total = 0
        for j in 0..<quantidade_ingrediente {
            custo_total += ingredientes[receita[2 * j + 1]] * receita[2 * (j + 1)]
        }

        let quantidade = D / custo_total
        if quantidade > resposta {
            resposta = quantidade
        }
    }

    print(resposta)
}
