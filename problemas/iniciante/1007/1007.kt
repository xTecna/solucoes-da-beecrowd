import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val A: Int = sc.next().toInt()
    val B: Int = sc.next().toInt()
    val C: Int = sc.next().toInt()
    val D: Int = sc.next().toInt()

    println("DIFERENCA = " + (A * B - C * D))
}
