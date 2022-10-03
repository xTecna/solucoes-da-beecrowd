dano = {
    "fire": 200,
    "water": 300,
    "earth": 400,
    "air": 100
}

raio = {
    "fire": {
        1: 20,
        2: 30,
        3: 50
    },
    "water": {
        1: 10,
        2: 25,
        3: 40
    },
    "earth": {
        1: 25,
        2: 55,
        3: 70
    },
    "air": {
        1: 18,
        2: 38,
        3: 60
    }
}


def dentro(x1, y1, x2, y2, xc, yc, r):
    xm = max(x1, min(xc, x2))
    ym = max(y1, min(yc, y2))

    return ((xm - xc)**2 + (ym - yc)**2) <= r * r


def resolve(magia, nivel, x1, y1, x2, y2, xc, yc):
    if(dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel])):
        return dano[magia]

    return 0


T = int(input())

for _ in range(T):
    w, h, x0, y0 = [int(x) for x in input().strip().split(' ')]
    magia, N, cx, cy = input().strip().split(' ')
    N, cx, cy = [int(x) for x in [N, cx, cy]]

    print(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy))
