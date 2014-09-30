defmodule Fibonacci do
  def fib(a, b, n) when n <= 1 do
    a + b
  end

  def fib(a, b, n) do
    total = a + b
    a = b
    b = total
    n = n - 1
    fib(a, b, n)
  end
end

IO.puts Fibonacci.fib(0, 1, 1)
IO.puts Fibonacci.fib(0, 1, 2)
IO.puts Fibonacci.fib(0, 1, 3)
IO.puts Fibonacci.fib(0, 1, 4)
IO.puts Fibonacci.fib(0, 1, 5)
IO.puts Fibonacci.fib(0, 1, 6)
