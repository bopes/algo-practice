# Given an array, move all elements after that index to the beginning of the array a certain number of times

def solution(A, K):

    if len(A) > 0:
        for i in range(K):
            A = [A[-1]] + A[:-1]

    return A