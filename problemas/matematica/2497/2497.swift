import Foundation

var teste = 1
while true {
    let n = Int(readLine(strippingNewline: true)!)!
    if (n == -1) {
        break
    }

    print(String(format: "Experiment %d: %d full cycle(s)", teste, n / 2))
    teste += 1
}