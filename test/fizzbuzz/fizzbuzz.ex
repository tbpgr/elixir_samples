defmodule Fizzbuzz do
  def fizzbuzz(from, to) when is_integer(from) and is_integer(to) do
    from..to |> Enum.map(&fizzbuzz/1)
  end
  def fizzbuzz(_from, _to) do
    raise "invalid argument"
  end
  defp fizzbuzz(n) when rem(n, 15) == 0 , do: "FizzBuzz"
  defp fizzbuzz(n) when rem(n, 3) == 0, do: "Fizz"
  defp fizzbuzz(n) when rem(n, 5) == 0, do: "Buzz"
  defp fizzbuzz(n), do: n
end
