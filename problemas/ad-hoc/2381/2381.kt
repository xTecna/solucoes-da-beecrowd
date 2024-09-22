import java.util.*

fun main(args: Array<String>) {
  val sc = Scanner(System.`in`)

  val n = sc.nextInt()
  val k = sc.nextInt()
  
  val alunos = mutableListOf<String>()
  for (i in 0..(n - 1)) {
    alunos.add(sc.next())
  }

  val ordenado = alunos.sorted()
  println(ordenado[k - 1])
}
