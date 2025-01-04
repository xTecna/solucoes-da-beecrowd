import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var teste = 1
    while (true) {
        val n: Int = sc.next().toInt()
        if (n == -1) {
            break
        }

        println("Experiment " + teste + ": " + (n / 2) + " full cycle(s)")
        teste += 1
    }
}
