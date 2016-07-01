# Find the longest sequence of zeroes in a number's binary form.

def solution(N):

    current_gap = 0
    max_gap = 0

    binary = str(bin(N)).strip('0b')

    for i in range(len(binary)):
        if binary[i] == '0':
            current_gap += 1
        else:
            max_gap = max(max_gap, current_gap)
            current_gap = 0

    return max_gap