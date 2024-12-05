import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..(4*n-1) step 4) {
    println(String.format("%d %d %d PUM", i, i + 1, i + 2))
  }
}
