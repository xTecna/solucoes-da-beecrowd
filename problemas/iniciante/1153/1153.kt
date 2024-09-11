import java.util.*

val f = Array(14) { -1 }

fun fatorial(n: Int): Int {
  if (f[n] == -1) {
    f[n] = n * fatorial(n - 1)
  }
  return f[n]
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  f[1] = 1
  val n: Int = sc.nextInt()
  println(fatorial(n))
}
