import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val s = sc.nextLine()
    var soma = 0
    for (i in 0 until s.length) {
        soma += s[i].toInt()
    }
    print(s)
    println(soma % 2)
}
