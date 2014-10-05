defmodule ImportSamples do
  def only_is_even(x) do
    import Integer, only: [is_even: 1]
    IO.puts is_even(x)
  end

  def is_even_and_odd(x) do
    import Integer, only: [is_even: 1, is_odd: 1]
    IO.puts is_even(x)
    IO.puts is_odd(x)
  end

  def is_even_and_odd_import_macros(x) do
    import Integer, only: :macros
    IO.puts is_even(x)
    IO.puts is_odd(x)
  end
end

ImportSamples.only_is_even(1)
ImportSamples.only_is_even(2)
ImportSamples.is_even_and_odd(1)
ImportSamples.is_even_and_odd(2)
ImportSamples.is_even_and_odd_import_macros(1)
ImportSamples.is_even_and_odd_import_macros(2)
