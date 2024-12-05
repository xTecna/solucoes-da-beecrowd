import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var resposta = 0;
for _ in 0..<n {
    let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
    let latas = Int(entrada[0])!
    let copos = Int(entrada[1])!

    if(latas > copos) {
        resposta += copos;
    }
}

print(resposta)
