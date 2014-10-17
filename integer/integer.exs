defmodule IntegerSamples do
  require Integer
  def exec do
    print_exec(Integer.is_odd(1))
    print_exec(Integer.is_odd(2))
    print_exec(Integer.is_even(1))
    print_exec(Integer.is_even(2))
  end

  defp print_exec(value) do
    IO.inspect value
  end
 end

IntegerSamples.exec