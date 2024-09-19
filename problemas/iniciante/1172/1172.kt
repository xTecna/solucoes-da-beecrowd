import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    for (i in 0..9) {
        val x: Int = sc.next().toInt()

        if (x > 0) {
            println(String.format("X[%d] = %d", i, x))
        } else {
            println(String.format("X[%d] = 1", i))
        }
    }
}
