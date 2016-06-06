# Determine if a string has properly nested parentheses.

def solution(s)

  open_parens = []
  s = s.split("")

  i = 0
  while i < s.length do
    if s[i] == "("
      open_parens << "("
    elsif s[i] == ")"
      if open_parens.last == "("
        open_parens.pop
      else
        open_parens << ")"
      end
    end
    i += 1
  end

  open_parens.empty? ? 1 : 0

end

