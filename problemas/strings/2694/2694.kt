import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    for (i in 1..n) {
        val linha = sc.next()
        println(linha.substring(2..3).toInt() + linha.substring(5..7).toInt() + linha.substring(11..12).toInt())
    }
}
