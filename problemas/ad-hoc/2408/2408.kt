import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val competicao = mutableListOf<Int>()
    for (i in 0..2) {
        competicao.add(sc.next().toInt())
    }

    competicao.sort()
    println(competicao[1])
}
