def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)
