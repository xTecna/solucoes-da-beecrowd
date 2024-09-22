import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val cha = sc.nextInt()
  
  var contador = 0
  for (i in 1..5) {
    val resposta = sc.nextInt()

    if (resposta == cha) {
      contador += 1
    }
  }

  println(contador)
}
