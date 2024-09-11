import Foundation

var notas: [Double] = []

while notas.count < 2 {
  let nota = Double(readLine(strippingNewline: true)!)!

  if(0.0 <= nota && nota <= 10.0){
    notas.append(nota)
  }else{
    print("nota invalida")
  }
}

print(String(format: "media = %.2f", (notas[0] + notas[1]) / 2.0))