numeros = gets.chomp.split.map(&:to_i)
cv = numeros[0]
ce = numeros[1]
cs = numeros[2]
fv = numeros[3]
fe = numeros[4]
fs = numeros[5]

cp = 10000 * (3 * cv + ce) + cs
fp = 10000 * (3 * fv + fe) + fs

if cp > fp
    puts "C"
elsif fp > cp
    puts "F"
else
    puts "="
end