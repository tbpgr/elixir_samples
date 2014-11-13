outer = "outer"
result = for outer <- Enum.to_list(1..10), do: outer * 2
IO.inspect result
IO.inspect outer
