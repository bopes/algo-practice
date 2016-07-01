# Given an array for integers from 1 to N with one integer missing, find the missing integer.

def solution(A):

    n = range(1,len(A)+2)
    availableValues = {}

    for i in n:
        availableValues[i] = True

    for i in A:
        availableValues.pop(i, None)

    for key in availableValues:
        return key

