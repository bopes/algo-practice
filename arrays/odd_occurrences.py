# Given an array with odd num of elements, all duplicates except one, find the sole non-duplicated elements

def solution(A):

    used = {}

    for i in A:
        if used.pop(i, False):
            pass
        else:
            used[i] = True

    for key in used:
        return key

