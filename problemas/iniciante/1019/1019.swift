import Foundation

var segundos = Int(readLine(strippingNewline: true)!)!

let horas = segundos / 3600
segundos %= 3600
let minutos = segundos / 60
segundos %= 60

print(String(format: "%d:%d:%d", horas, minutos, segundos))