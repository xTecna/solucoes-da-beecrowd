import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val t = sc.next()

  var M = Array(12) { FloatArray(12) }
  for (i in 0..11) {
    for (j in 0..11) {
      M[i][j] = sc.next().toFloat()
    }
  }

  var media = 0.0
  var quantidade = 0
  for (i in 0..11) {
    for (j in maxOf(i + 1, 12 - i)..11) {
      media += M[i][j]
      quantidade += 1
    }
  }

  if (t.equals("M")) {
    media /= quantidade
  }

  println(String.format("%.1f", media))
}
