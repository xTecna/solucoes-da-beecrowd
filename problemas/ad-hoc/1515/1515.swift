import Foundation

while (true) {
    let n = Int(readLine(strippingNewline: true)!)!
    if (n == 0) {
        break
    }

    var menor_ano = 9999;
    var resposta = "";
    for _ in 0..<n {
        let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
        let planeta = entrada[0]
        let ano = Int(entrada[1])!
        let tempo = Int(entrada[2])!

        if (ano - tempo < menor_ano) {
            menor_ano = ano - tempo
            resposta = planeta
        }
    }

    print(resposta)
}