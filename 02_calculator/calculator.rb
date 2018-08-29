def add a, b
  a + b
end

def subtract a, b
  a - b
end

def sum params
  all = 0
  if params.empty? 
    all
  end

  params.each do |p|
    all += p
  end

  all
end

def multiply params
  product = 1
  params.each do |p|
    product *= p
  end

  product
end

def power n, pow
  n**pow
end

def factorial n
  if n == 1 || n == 0
    1
  else
    n = factorial(n - 1) * n
  end
end