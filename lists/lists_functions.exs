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

# keyreplace(list, key, position, new_tuple)
IO.puts "keyreplace(list, key, position, new_tuple)"
IO.inspect List.keyreplace([key1: 1, key2: 2], :key2, 0, {:key3, 3})

# keysort(list, position)
IO.puts "keysort(list, position)"
list = [key1: 1, key3: 0, key2: 2]
IO.inspect List.keysort(list, 0)
IO.inspect List.keysort(list, 1)

# keystore(list, key, position, new_tuple)
IO.puts "keystore(list, key, position, new_tuple)"
list = [key1: 1, key3: 0, key2: 2]
IO.inspect List.keystore(list, :key3, 0, {:key4, 4})
IO.inspect List.keystore(list, 2, 1, {:key4, 4})

# last(list1)
IO.puts "last(list1)"
list = (1..10 |> Enum.to_list)
IO.inspect List.last([])
IO.inspect List.last(['a'])
IO.inspect List.last([1,2,3])

# replace_at(list, index, value)
IO.puts "replace_at(list, index, value)"
list = (1..10 |> Enum.to_list)
IO.inspect List.replace_at(list, 2, 999)
IO.inspect List.replace_at(list, 2, "test")
IO.inspect List.replace_at(list, 2, list)

# to_atom(char_list)
IO.puts "to_atom(char_list)"
IO.inspect List.to_atom('test')

# to_float(char_list)
IO.puts "to_float(char_list)"
IO.inspect List.to_float('9.4e+2')

# to_integer(char_list)
IO.puts "to_integer(char_list)"
IO.inspect List.to_integer('10')

# to_integer(char_list, base)
IO.puts "to_integer(char_list, base)"
IO.inspect List.to_integer('10', 2)
IO.inspect List.to_integer('10', 8)
IO.inspect List.to_integer('10', 16)
IO.inspect List.to_integer('10', 36)

# to_string(list)
IO.puts "to_string(list)"
IO.inspect List.to_string([0x3042,0x3044,0x3046,0x3048,0x304a])

# to_tuple(list)
IO.puts "to_tuple(list)"
IO.inspect List.to_tuple([:key1, 'value1', :key2, 'value2'])

# update_at(list, index, fun)
IO.puts "update_at(list, index, fun)"
list = (1..10 |> Enum.to_list)
IO.inspect List.update_at(list, 5, fn (x)->x * 2 end)
IO.inspect List.update_at(list, 5, &(&1 * 2))

# wrap(list)
IO.puts "wrap(list)"
list = (1..10 |> Enum.to_list)
IO.inspect List.wrap(list)
IO.inspect List.wrap([])
IO.inspect List.wrap("hoge")

# zip(list_of_lists)
IO.puts "zip(list_of_lists)"
list1 = (1..5 |> Enum.to_list)
list2 = (6..10 |> Enum.to_list)
IO.inspect List.zip([list1, list2])
IO.inspect List.zip([list1, list2, list1])
