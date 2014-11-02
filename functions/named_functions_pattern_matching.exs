defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(x) do
    fib(x - 1) + fib(x - 2)
  end
end

Enum.each(0..10, &(IO.puts Integer.to_string(&1) <> ":" <> Integer.to_string(Fibonacci.fib(&1))))
