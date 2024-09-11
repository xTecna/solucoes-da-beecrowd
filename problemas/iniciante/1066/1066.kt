import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    var pares: Int = 0
    var impares: Int = 0
    var positivos: Int = 0
    var negativos: Int = 0
    for (i in 1..5) {
        var x: Int = sc.next().toInt()

        if (x % 2 == 0) {
            pares += 1
        } else {
            impares += 1
        }

        if (x > 0) {
            positivos += 1
        } else if (x < 0) {
            negativos += 1
        }
    }

    println(String.format("%d valor(es) par(es)", pares))
    println(String.format("%d valor(es) impar(es)", impares))
    println(String.format("%d valor(es) positivo(s)", positivos))
    println(String.format("%d valor(es) negativo(s)", negativos))
}
