import java.util.Scanner

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val t = sc.nextInt()

  for (i in 1..t) {
    val n = sc.nextInt()
    val k = sc.nextInt()

    println(n / k + n % k)
  }
}
