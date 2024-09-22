import Foundation

func r(a: Int, b: Int) -> Int {
  return (9 * a * a) + (b * b)
}

func b(a: Int, b: Int) -> Int {
  return 2 * (a * a) + (25 * b * b)
}

func c(a: Int, b: Int) -> Int {
  return -100 * a + (b * b * b)
}

let n = Int(readLine(strippingNewline: true)!)!
for _ in 0..<n {
  let entrada = readLine(strippingNewline: true)!.components(separatedBy: " ")
  let x = Int(entrada[0])!
  let y = Int(entrada[1])!

  let rafael = r(a: x, b: y)
  let beto = b(a: x, b: y)
  let carlos = c(a: x, b: y)

  if (rafael > beto && rafael > carlos) {
    print("Rafael ganhou")
  } else if (beto > rafael && beto > carlos) {
    print("Beto ganhou")
  } else {
    print("Carlos ganhou")
  }
}