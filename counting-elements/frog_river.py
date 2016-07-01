# Given an array of integers and a target, find the earliest index in the array before which (inclusive) all integers less than or equal to the target have been included. Time complexity should be O(N).

def solution(X, A):
    river = {}

    for i in range(1,X+1):
        river[i] = False

    for i in range(len(A)):
        river.pop(A[i], None)
        if not bool(river):
            return i

    return -1

