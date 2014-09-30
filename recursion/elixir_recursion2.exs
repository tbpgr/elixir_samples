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

defmodule FibonacciHelper do
  def call_fib(start, finish, [head|tail]) do
    IO.puts Fibonacci.fib(start, finish, head)
    call_fib(start, finish, tail)
  end

  def call_fib(_, _, []) do
    # finish
  end
end

FibonacciHelper.call_fib(0, 1, [1,2,3,4,5,6])
