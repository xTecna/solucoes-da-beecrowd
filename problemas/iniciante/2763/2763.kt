import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val cpf = sc.nextLine()
  val partes = cpf.split('.')
  val partes2 = partes[2].split('-')

  println(partes[0])
  println(partes[1])
  println(partes2[0])
  println(partes2[1])
}
