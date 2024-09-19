import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n: Int = sc.nextInt()
  for (i in 1..n) {
    if (n % i == 0){
      println(i)
    }
  }
}
