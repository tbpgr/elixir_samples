hogex = ~r/h.ge/
IO.inspect "hoge" =~ hogex
IO.inspect "hige" =~ hogex
IO.inspect "hage" =~ hogex
IO.inspect "hagee" =~ hogex
IO.inspect "hag" =~ hogex

IO.inspect ~r/h.ge/
IO.inspect ~r|h.ge|
IO.inspect ~r"h.ge"
IO.inspect ~r'h.ge'
IO.inspect ~r(h.ge)
IO.inspect ~r[h.ge]
IO.inspect ~r{h.ge}
IO.inspect ~r<h.ge>

var = "@@@"
IO.inspect ~s(hoge hige hage) |> String.upcase
IO.inspect ~s(hoge hige hage #{var}) |> String.upcase
IO.inspect ~S(hoge hige hage #{var}) |> String.upcase

var = "@@@"
IO.inspect ~c(hoge hige hage) |> Enum.take(2)
IO.inspect ~c(#{var} hoge hige hage) |> Enum.take(2)
IO.inspect ~C(#{var} hoge hige hage) |> Enum.take(2)

IO.inspect ~w(hoge hige hage) |> Enum.take(2)
IO.inspect ~w(hoge hige hage)s |> Enum.take(2)
IO.inspect ~w(hoge hige hage)s |> Enum.take(2)
IO.inspect ~w(hoge hige hage)c |> Enum.take(2)
IO.inspect ~w(hoge hige hage)a |> Enum.take(2)

var = "@@@"
IO.inspect ~s"""
line1
#{var}
line3
"""

var = "@@@"
IO.inspect ~S"""
line1
#{var}
line3
"""

var = "@@@"
chars = ~c"""
line1
#{var}
line3
"""
IO.inspect chars |> Enum.take(10)

regexp = sigil_r(<<"h.ge">>, 'i')
IO.inspect "hoge"=~regexp
IO.inspect "hge"=~regexp

defmodule UpDownSigils do
  def sigil_u(string, []), do: String.upcase(string)
  def sigil_d(string, []), do: String.downcase(string)
end

defmodule Hoge do
  import UpDownSigils
  def hoge do
    IO.inspect ~d(hOgE)
    IO.inspect ~u(hOgE)
  end
end

Hoge.hoge
