import java.util.Scanner

fun segura(m: Array<IntArray>, i: Int, j: Int): Boolean {
  return m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2
}

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()

  val M = Array(n + 1) { IntArray(n + 1) }
  for (i in 0..n) {
    for (j in 0..n) {
      M[i][j] = sc.nextInt()
    }
  }

  for (i in 0..(n - 1)) {
    for (j in 0..(n - 1)) {
      if (segura(M, i, j)) {
        print('S')
      } else {
        print('U')
      }
    }
    println()
  }
}
