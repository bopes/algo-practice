# Determine if an input string is properly nested.

def solution(s)

  container = []
  symbols = { "]" => "[", ")" => "(", "}" => "{" }

  s.split("").each do |char|
    if symbols.keys.include?(char) && container[-1] == symbols[char]
      container = container[0..-2]
    elsif symbols.values.include?(char) || symbols.keys.include?(char)
      container << char
    end
  end

  container.empty? ? 1 : 0

end

