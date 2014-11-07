defmodule Hoge do
end
IO.inspect Elixir.Hoge
IO.inspect is_atom(Hoge)
IO.inspect is_atom(Elixir.Hoge)

defmodule Upper do
  def upper(text) do
    String.upcase(text)
  end
end

IO.inspect Upper.upper("hOgE")
IO.inspect :"Elixir.Upper".upper("hOgE")
