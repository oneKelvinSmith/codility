def solution(x, a)
  return -1 if a.empty?

  left_index = 0
  right_index = a.size - 1
  count_left, count_right = 0, 0

  while left_index != right_index
    if count_left > count_right
      count_right += 1 if a[right_index] != x
      right_index -= 1
    else
      count_left += 1 if a[left_index] == x
      left_index += 1
    end
  end

  return left_index + 1 if count_right == count_left
  -1
end
