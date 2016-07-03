# Count the number of passing cars on the road. Cars are represented in an array, with 0's for cars going east and 1 for cars going west.

def solution(A):
    countEast = 0
    countPassing = 0

    for i in A:
        if i == 0:
            countEast += 1
        else:
            countPassing += countEast

    return countPassing if countPassing < 1000000000 else -1
