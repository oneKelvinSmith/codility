def solution(x, y, d)
  result = (y - x) / d
  return result if (y - x) % d == 0
  result + 1
end
