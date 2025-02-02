N = gets.to_i
Q = gets.to_i

mesas = []
for i in (0..N) do
    mesas << i
end

for i in (1..Q) do
    numeros = gets.chomp.split.map(&:to_i)
    e = numeros[0]
    a = numeros[1]

    if e == 1
        b = numeros[2]

        temp = mesas[a]
        mesas[a] = mesas[b]
        mesas[b] = temp
    else
        resposta = 0
        mesa = mesas[a]
        while mesa != a do
            resposta += 1
            mesa = mesas[mesa]
        end

        puts resposta
    end
end