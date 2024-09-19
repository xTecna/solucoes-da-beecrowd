import java.util.*

val f = Array(101) { -1 }

fun feynman(n: Int): Int {
  if (f[n] == -1) {
    f[n] = feynman(n - 1) + n * n
  }
  return f[n]
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  f[1] = 1
  while (true) {
    val n: Int = sc.nextInt()
    if (n == 0) {
      break
    }
    println(feynman(n))
  }
}
