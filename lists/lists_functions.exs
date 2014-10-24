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

# foldl(list, acc, function)
list = (1..10 |> Enum.to_list)
IO.puts "foldl(list, acc, function)"
IO.inspect List.foldl(list, 1, fn (x, acc) -> x - acc end)

# foldr(list, acc, function)
list = (1..10 |> Enum.to_list)
IO.puts "foldr(list, acc, function)"
IO.inspect List.foldr(list, 1, fn (x, acc) -> x - acc end)

# insert_at(list, index, value)
list = (1..10 |> Enum.to_list)
IO.puts "insert_at(list, index, value)"
IO.inspect List.insert_at(list, 5, 99)

# keydelete(list, key, position)
IO.puts "keydelete(list, key, position)"
IO.inspect List.keydelete([key1: 1, key2: 2], :key2, 0)
IO.inspect List.keydelete([key1: 1, key2: 2], 1, 1)

# keyfind(list, key, position, default \\ nil)
IO.puts "keyfind(list, key, position, default \\ nil)"
IO.inspect List.keyfind([key1: 1, key2: 2], :key2, 0)
IO.inspect List.keyfind([key1: 1, key2: 2], 1, 1)

# keymember?(list, key, position)
IO.puts "keymember?(list, key, position)"
IO.inspect List.keymember?([key1: 1, key2: 2], :key2, 0)
IO.inspect List.keymember?([key1: 1, key2: 2], 1, 1)
IO.inspect List.keymember?([key1: 1, key2: 2], :key3, 0)
IO.inspect List.keymember?([key1: 1, key2: 2], 3, 1)

# 残は http://elixir-lang.org/docs/stable/elixir/List.html 参照
