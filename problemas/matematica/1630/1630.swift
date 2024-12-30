import Foundation

func MDC(a: Int, b: Int) -> Int {
    if(b == 0) {
        return a;
    }
    return MDC(a: b, b: a % b);
}

while let linha = readLine(strippingNewline: true) {
    let entrada = linha.components(separatedBy: " ")
    let x = Int(entrada[0])!
    let y = Int(entrada[1])!

    print(2 * (x / MDC(a: x, b: y) + y / MDC(a: x, b: y)))
}
