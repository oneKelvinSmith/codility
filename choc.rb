def gcd(a, b)
  return b if a % b == 0
  gcd(b, a % b)
end

def solution(n, m)
  lcm = n * m / gcd(n, m)
  (lcm) / m
end
