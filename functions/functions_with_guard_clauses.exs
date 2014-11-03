defmodule MultiModuleDouble do
  def double(x) when is_number(x) do
    x * 2
  end

  def double(x) when is_list(x) do
    x ++ x
  end

  def double(x) when is_binary(x) do
    try do
      double(String.to_integer(x))
    rescue
      e in ArgumentError -> x <> x
    end
  end
end

IO.inspect MultiModuleDouble.double(2)
IO.inspect MultiModuleDouble.double([1, 2, 3])
IO.inspect MultiModuleDouble.double("2")
IO.inspect MultiModuleDouble.double("a")
