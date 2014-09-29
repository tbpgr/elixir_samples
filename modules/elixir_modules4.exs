defmodule Num do
  def print_year_or_aha(x) do
    IO.puts yeah?(x)
  end

  defp yeah?(true) do
    "year!"
  end

  defp yeah?(x) when is_boolean(x) do
    "aha"
  end
end

Num.print_year_or_aha(true)
Num.print_year_or_aha(false)
Num.print_year_or_aha("not boolean")