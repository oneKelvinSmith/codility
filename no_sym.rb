def solution(x, a)
  return -1 if a.empty?

  left = 0
  right = a.size - 1
  count_left = 0
  count_right = 0

  while left != right
    if count_left > count_right
      count_right += 1 if a[right] != x
      right -= 1
    else
      count_left += 1 if a[left] == x
      left += 1
    end
  end

  return left if count_left.nonzero? && count_left == count_right
  -1
end
