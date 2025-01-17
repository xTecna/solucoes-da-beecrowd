import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val t: Int = sc.next().toInt()

    for (i in 1..t) {
        val n: Int = sc.next().toInt()
        val m: Int = sc.next().toInt()

        println(String.format("%.0f", Math.ceil((n - 2) / 3.0) * Math.ceil((m - 2) / 3.0)))
    }
}
