def factorial(x)
  while x <= 1
    return 1
  end
  return x * factorial(x-1)
end