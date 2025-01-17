entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
end

cv = tonumber(entrada[1])
ce = tonumber(entrada[2])
cs = tonumber(entrada[3])
fv = tonumber(entrada[4])
fe = tonumber(entrada[5])
fs = tonumber(entrada[6])

cp = 10000 * (3 * cv + ce) + cs
fp = 10000 * (3 * fv + fe) + fs

if cp > fp then
    print('C')
else
    if fp > cp then
        print('F')
    else
        print('=')
    end
end
