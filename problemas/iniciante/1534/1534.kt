import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (sc.hasNext())
  {
    val n = sc.nextInt()

    for(i in 0..(n - 1)) {
      for(j in 0..(n - 1)) {
        if(i == n - 1 - j) {
          print(2)
        } else if(i == j) {
          print(1)
        } else {
          print(3)
        }
      }
      println("")
    }
  }
}
