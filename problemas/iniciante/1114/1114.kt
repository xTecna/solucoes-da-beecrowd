import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  var senha: Int = sc.next().toInt()
  while (senha != 2002) {
    println("Senha Invalida")
    senha = sc.next().toInt()
  }
  println("Acesso Permitido")
}
