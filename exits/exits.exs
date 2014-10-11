defmodule ExceptionSample do
  def random_exec do
    x = :random.uniform(100)
    strx = Integer.to_string(x)
    cond do
      rem(x, 11) == 0 -> exit "11 % 0 == 0"
      rem(x, 15) == 0 -> "FizzBuzz" <> strx
      rem(x, 5) == 0 -> "Buzz" <> strx
      rem(x, 3) == 0 -> "Fizz" <> strx
      true -> x
    end
  end

  def try_rescue do
    try do
      x = ExceptionSample.random_exec
    catch
      :exit ->
        IO.puts "catch exit"
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
