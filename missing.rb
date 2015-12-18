def solution(a)
  upper = a.size + 1
  presence = Array.new(upper, false)

  a.each do |num|
    presence[num - 1] = true if 1 <= num && num <= upper
  end

  presence.each_with_index do |present, index|
    return index + 1 unless present
  end

  -1
end
