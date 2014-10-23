# delete(list, item)
list = (1..10 |> Enum.to_list)
IO.puts "delete(list, item)"
IO.inspect List.delete(list, 5)

# delete_at(list, index)
list = (1..10 |> Enum.to_list)
IO.puts "delete_at(list, index)"
IO.inspect List.delete_at(list, 5)

# duplicate(elem, n)
IO.puts "duplicate(elem, n)"
IO.inspect List.duplicate("hoge", 5)

# first(list1)
list = (1..10 |> Enum.to_list)
IO.puts "first(list1)"
IO.inspect List.first(list)

# flatten(list, tail)
list = [1, [2, [3, 4]]]
IO.puts "flatten(list, tail)"
IO.inspect List.flatten(list)
IO.inspect List.flatten(list, [5, 6])

# 残は http://elixir-lang.org/docs/stable/elixir/List.html 参照
