import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val diametro: Int = sc.next().toInt()
    val altura: Int = sc.next().toInt()
    val largura: Int = sc.next().toInt()
    val profundidade: Int = sc.next().toInt()

    if (diametro <= altura && diametro <= largura && diametro <= profundidade) {
        println("S")
    } else {
        println("N")
    }
}
