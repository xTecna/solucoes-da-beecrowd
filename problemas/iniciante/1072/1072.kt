import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var dentro: Int = 0
    var fora: Int = 0

    val t: Int = sc.next().toInt()
    for (i in 1..t) {
        val x: Int = sc.next().toInt()

        if (x >= 10 && x <= 20) {
            dentro += 1
        } else {
            fora += 1
        }
    }

    println(String.format("%d in", dentro))
    println(String.format("%d out", fora))
}
