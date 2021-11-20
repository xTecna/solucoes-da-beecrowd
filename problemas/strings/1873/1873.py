C = int(input())

for _ in range(C):
    rajesh, sheldon = input().strip().split(' ')

    if(rajesh == sheldon):
        print("empate")
    elif(rajesh == "pedra"):
        if(sheldon == "tesoura" or sheldon == "lagarto"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "papel"):
        if(sheldon == "pedra" or sheldon == "spock"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "tesoura"):
        if(sheldon == "papel" or sheldon == "lagarto"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "lagarto"):
        if(sheldon == "papel" or sheldon == "spock"):
            print("rajesh")
        else:
            print("sheldon")
    elif(sheldon == "pedra" or sheldon == "tesoura"):
        print("rajesh")
    else:
        print("sheldon")
