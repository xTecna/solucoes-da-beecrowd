import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val k = sc.nextInt()

    if (k == 0) {
      break
    }

    val n = sc.nextInt()
    val m = sc.nextInt()
    for (i in 1..k) {
      var x = sc.nextInt()
      var y = sc.nextInt()

      x -= n
      y -= m

      if (x > 0 && y > 0) {
        println("NE")
      } else if (x > 0 && y < 0) {
        println("SE")
      } else if (x < 0 && y > 0) {
        println("NO")
      } else if (x < 0 && y < 0) {
        println("SO")
      } else {
        println("divisa")
      }
    }
  }
}
