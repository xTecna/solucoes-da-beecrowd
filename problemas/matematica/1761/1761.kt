import java.lang.Math
import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val pi = 3.141592654
    while (sc.hasNext()) {
        val a = sc.nextDouble()
        val b = sc.nextDouble()
        val c = sc.nextDouble()

        println(String.format("%.2f", 5.0 * (Math.tan(a * pi / 180.0) * b + c)))
    }
}
