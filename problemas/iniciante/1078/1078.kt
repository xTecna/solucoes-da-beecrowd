import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val x: Int = sc.next().toInt()

    for (i in 1..10) {
        println(String.format("%d x %d = %d", i, x, i * x))
    }
}
