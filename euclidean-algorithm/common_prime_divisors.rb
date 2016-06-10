# Given two sibling arrays,  find the count of sibling elements that have the same prime divisors. Should have time complexity of O(Z*(max(A) + max(B))**2)




# This has time complexity of O(Z*(max(A) + max(B))**1/2), but times out on tests.

def solution1(a, b)

  results = 0

  i = 0
  while i < a.length do
    a_v = a[i]
    b_v = b[i]

    a_primes = []

    j = 2
    while a_v > 1 do
      if a_v % j == 0
        a_primes << j if a_primes[-1] != j
        a_v = a_v / j
      else
        j += 1
      end
    end

    b_primes = []

    j = 2
    while b_v > 1 do
      if b_v % j == 0
        b_primes << j if b_primes[-1] != j
        b_v = b_v / j
      else
        j += 1
      end
    end

    results += 1 if a_primes == b_primes

    i += 1

  end

  results

end