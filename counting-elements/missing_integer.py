# Given an array of integers, find the smallest positive integer that isn't included in the array

def solution(A):

    possInts = {}

    for i in range(1,len(A)+2):
        possInts[i] = None

    for i in A:
        possInts.pop(i, None)

    for key in possInts:
        return key

