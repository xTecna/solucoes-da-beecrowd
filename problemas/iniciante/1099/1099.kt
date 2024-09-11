import java.util.*
import java.lang.Math

fun quantidadeImpares(a: Int, b: Int): Int {
  return ((b - a) / 2) + 1
}

fun somaPA(a1: Int, an: Int, n: Int): Int {
  return ((a1 + an) * n) / 2
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    var x: Int = sc.nextInt()
    var y: Int = sc.nextInt()

    if (x > y){
      var temp = x
      x = y
      y = temp
    }

    x += Math.abs(x) % 2 + 1
    y -= Math.abs(y) % 2 + 1

    if (x > y) {
      println(0)
    } else {
      println(somaPA(x, y, quantidadeImpares(x, y)))
    }
  }
}
