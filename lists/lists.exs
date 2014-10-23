# concat
IO.inspect (1..5 |> Enum.to_list) ++ (6..10 |> Enum.to_list)

## difference
IO.inspect (1..5 |> Enum.to_list) -- (2..4 |> Enum.to_list)

## member
list = (1..10 |> Enum.to_list)
IO.inspect 1 in list
IO.inspect 10 in list
IO.inspect 11 in list
