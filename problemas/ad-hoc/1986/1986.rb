def valor(digito)
    if digito.ord <= '9'.ord
        digito.ord - '0'.ord
    else
        digito.ord - 'A'.ord + 10
    end
end

def converteParaDecimal(numero)
    resposta = 0
    for i in 0..(numero.length - 1) do
        resposta = 16 * resposta + valor(numero[i])
    end
    resposta
end

n = gets.to_i
letras = gets.chomp.split.map(&:upcase)

resposta = ""
for letra in letras
    resposta += converteParaDecimal(letra).chr
end

puts resposta