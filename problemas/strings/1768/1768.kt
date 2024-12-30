import java.util.*

fun imprimeTriangulo(tamanho: Int, deslocamento: Int) {
    var espacos = tamanho / 2 + deslocamento
    var asteriscos = 1

    while (asteriscos <= tamanho) {
        for (i in 1..espacos) {
            print(" ")
        }
        for (i in 1..asteriscos) {
            print("*")
        }
        println("")

        espacos -= 1
        asteriscos += 2
    }
}

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    while (sc.hasNext()) {
        val n = sc.nextInt()

        imprimeTriangulo(n, 0)
        imprimeTriangulo(3, n / 2 - 1)
        println("")
    }
}
