old_map = %{five: 5, four: 4, six: 6}
IO.inspect old_map
IO.inspect  %{ old_map | five: 7 }

IO.inspect Map.put(old_map, :seven, 7)
IO.inspect Map.put(old_map, :five, 7)
