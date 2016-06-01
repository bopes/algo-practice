# Find the longest sequence of zeroes in a number's binary form.

def solution(n)

  i = 0
  while 2**i <= n
    i += 1
  end
  i -= 1

  binary = [0]

  remainder = n

  while i >= 0 && remainder > 0
    if 2**i <= remainder
      remainder -= 2**i
      binary += [0]
    else
      binary[-1] += 1
    end
    i -= 1
  end

  while binary[-1] == 0
    binary = binary[0..-2]
  end

  binary.empty? ? 0 : binary.max

end

