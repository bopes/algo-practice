# Given a non-zero array of positive integers, determine if the array contains a permutation. Time complexity should be O(N).

def solution(A):

    if len(A) == 0:
        return 0
    else:
        n = len(A) + 1
        unused_values = {}

    for i in range(1,n):
        unused_values[i] = True

    for i in A:
        if i in unused_values:
            unused_values.pop(i, None)
        else:
            return 0

    if not bool(unused_values):
        return 1
    else:
        return 0