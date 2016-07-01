# Count minium jumps to cover a certain distance

def solution(X, Y, D):

    dist = Y - X

    if dist % D == 0:
        return dist / D
    else:
        return dist / D + 1