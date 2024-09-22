import java.util.Scanner

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n = sc.nextInt()
    for (i in 1..n) {
        val h = sc.nextInt()
        val m = sc.nextInt()
        val o = sc.nextInt()

        if (o == 1) {
            println(String.format("%02d:%02d - A porta abriu!", h, m))
        } else {
            println(String.format("%02d:%02d - A porta fechou!", h, m))
        }
    }
}
