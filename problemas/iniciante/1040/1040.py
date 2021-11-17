nota = [float(x) for x in input().strip().split(' ')]

media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3])/10

print(f"Media: {media:.1f}")

if(media >= 7.0):
    print("Aluno aprovado.")
elif(media < 5.0):
    print("Aluno reprovado.")
else:
    print("Aluno em exame.")

    exame = float(input().strip())
    print(f"Nota do exame: {exame:.1f}")

    media = (media + exame)/2

    if(media >= 5.0):
        print("Aluno aprovado.")
    else:
        print("Aluno reprovado.")

    print(f"Media final: {media:.1f}")
