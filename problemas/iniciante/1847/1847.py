A, B, C = [int(x) for x in input().strip().split(' ')]

if (B < A and C >= B):
    print(":)")
elif (B > A and C <= B):
    print(":(")
elif (B > A and C > B and C - B < B - A):
    print(":(")
elif (B > A and C > B and C - B >= B - A):
    print(":)")
elif (B < A and C < B and B - C < A - B):
    print(":)")
elif (B < A and C < B and B - C >= A - B):
    print(":(")
elif (A == B):
    if (C > B):
        print(":)")
    else:
        print(":(")
