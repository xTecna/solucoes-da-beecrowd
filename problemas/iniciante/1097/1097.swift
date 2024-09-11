import Foundation

for i in 0...4 {
  for j in 0...2 {
    print(String(format: "I=%d J=%d", 1 + 2 * i, 7 - j + (2 * i)))
  }
}
