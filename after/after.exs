defmodule ExceptionSample do
  def random_exec do
    x = :random.uniform(100)
    strx = Integer.to_string(x)
    cond do
      rem(x, 11) == 0 -> raise "raise #{x} mod 11 == 0"
      rem(x, 15) == 0 -> "FizzBuzz" <> strx
      rem(x, 5) == 0 -> "Buzz" <> strx
      rem(x, 3) == 0 -> "Fizz" <> strx
      true -> x
    end
  end

  def try_rescue do
    try do
      x = ExceptionSample.random_exec
    rescue
      RuntimeError ->
        IO.puts "rescue RuntimeError"
    after
      IO.puts "after random_exec"
    end
  end

  def try_rescue_times(0) do
    # do nothing
  end

  def try_rescue_times(n) do
    IO.inspect ExceptionSample.try_rescue
    try_rescue_times(n - 1)
  end
end

ExceptionSample.try_rescue_times(50)
