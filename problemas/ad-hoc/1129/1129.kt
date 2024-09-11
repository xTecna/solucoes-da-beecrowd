import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  while (true) {
    val n: Int = sc.nextInt()

    if (n == 0) {
      break
    }

    for (i in 1..n) {
      var opcao = -1
      var corretos = 0

      for (k in 0..4) {
        val cor = sc.nextInt()
        if (cor <= 127) {
          opcao = k
          corretos += 1
        }
      }

      if (corretos == 1) {
        println(('A'.toInt() + opcao).toChar())
      } else {
        println('*')
      }
    }
  }
}
