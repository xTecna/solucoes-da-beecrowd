import java.util.*

fun somaPA(a1: Int, an: Int, n: Int): Int {
  return ((a1 + an) * n) / 2
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val a: Int = sc.nextInt()
  var n: Int = 0
  while (true) {
    n = sc.nextInt()
    if (n > 0) {
      break
    }
  }

  println(somaPA(a, a + n - 1, n))
}
