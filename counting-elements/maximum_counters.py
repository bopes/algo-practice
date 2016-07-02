# Given a set of counters and an array of integers, go through the array and increase the counter corresponding to the integer by one, or increase all counters to match the current highest counter if the integer doesn't correspond to a counter.

def solution(N, A):

    counters = {}
    maxCounter = 0
    lastCounter = 0

    for i in A:
        if i <= N:
            newValue = counters.get(i, lastCounter) + 1
            counters[i] = newValue
            maxCounter = max(maxCounter, newValue)
        else:
            lastCounter = maxCounter
            counters = {}

    results = []

    for i in range(1,N+1):
        results.append(counters.get(i, lastCounter))

    return results