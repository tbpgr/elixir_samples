defmodule ImportSamples do
  require Integer
  def is_even(x) do
    IO.puts Integer.is_even(x)
  end

  def is_odd(x) do
    IO.puts Integer.is_odd(x)
  end
end

ImportSamples.is_even(1)
ImportSamples.is_even(2)
ImportSamples.is_odd(1)
ImportSamples.is_odd(2)
