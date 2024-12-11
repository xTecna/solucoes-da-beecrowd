import java.util.*

fun variacoes(letra: Char): Int {
    if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S') {
        return 3
    } else {
        return 2
    }
}

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)

    val n: Int = sc.next().toInt()
    for (i in 1..n) {
        val senha = sc.next().toUpperCase()

        var resposta = 1
        for (j in 0..(senha.length - 1)) {
            resposta *= variacoes(senha[j])
        }
        println(resposta)
    }
}
