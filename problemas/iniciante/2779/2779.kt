import java.util.Scanner

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  val m = sc.nextInt()

  val figurinhas = HashSet<Int>()
  for (i in 1..m) {
    val x = sc.nextInt()
    figurinhas.add(x)
  }

  println(n - figurinhas.size)
}
