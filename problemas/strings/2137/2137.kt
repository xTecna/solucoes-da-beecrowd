import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (sc.hasNext()) {
    val n = sc.nextInt()

    val biblioteca = mutableListOf<String>()
    for (i in 0..(n - 1)) {
      biblioteca.add(sc.next())
    }

    val ordenado = biblioteca.sorted()
    for (i in 0..(n - 1)) {
      println(ordenado[i])
    }
  }
}
