# Given an array with at least 2 elements, find the smallest absolute value difference between the elements before and after (inclusive) a central pivot index.

def solution(A):

    first = A[0]
    second = sum(A[1:])

    min_gap = abs(first - second)

    for i in range(1,len(A)-1):
        first += A[i]
        second -= A[i]
        min_gap = min(min_gap, abs(first - second))

    return min_gap

