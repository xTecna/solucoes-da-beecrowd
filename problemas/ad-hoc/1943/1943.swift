import Foundation

let k = Int(readLine(strippingNewline: true)!)!

if (k == 1) {
  print("Top 1");
} else if (k <= 3) {
  print("Top 3");
} else if (k <= 5) {
  print("Top 5");
} else if (k <= 10) {
  print("Top 10");
} else if (k <= 25) {
  print("Top 25");
} else if (k <= 50) {
  print("Top 50");
} else {
  print("Top 100");
}