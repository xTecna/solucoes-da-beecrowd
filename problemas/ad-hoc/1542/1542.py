while True:
    try:
        Q, D, P = [int(x) for x in input().strip().split(' ')]

        L = (Q * D * P)//(P - Q)

        print(f"{L} pagina{'s' if L > 1 else ''}")        
    except ValueError:
        break
