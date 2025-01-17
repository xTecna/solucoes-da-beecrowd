cv, ce, cs, fv, fe, fs = [int(x) for x in input().strip().split(' ')]

cp = 10000 * (3 * cv + ce) + cs
fp = 10000 * (3 * fv + fe) + fs

if cp > fp:
    print('C')
elif fp > cp:
    print('F')
else:
    print('=')