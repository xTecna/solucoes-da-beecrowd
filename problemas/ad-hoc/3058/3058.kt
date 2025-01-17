import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()

    var menor_preco = 1000.0
    for (i in 1..n) {
        val p: Double = sc.next().toDouble()
        val g: Double = sc.next().toDouble()

        menor_preco = Math.min(menor_preco, p / g)
    }

    println(String.format("%.2f", 1000 * menor_preco))
}
