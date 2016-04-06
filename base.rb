def solution(a)
  return [] if a.empty?

  base = -2
  negative = -integer(a, base)

  bits_for negative, base
end

def integer(bits, base)
  integer = 0
  bits.each_with_index do |bit, index|
    integer += bit * base**index
  end
  integer
end

def bits_for(integer, base)
  bits = []
  until integer == 0
    remainder = integer % base
    integer /= base
    if remainder < 0
      remainder -= base
      integer -= 1 if integer.nonzero?
    end
    bits << remainder
  end
  bits
end
