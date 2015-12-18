def solution(a)
  sum_lower = 0
  sum_upper = a.inject(:+)

  a.each_with_index do |number, index|
    sum_lower += a[index - 1] if index > 0
    sum_upper -= number
    return index if sum_lower == sum_upper
  end

  -1
end
