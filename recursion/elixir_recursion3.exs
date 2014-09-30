IO.puts Enum.reduce([1,2,3,4,5,6], 0, fn(x, acc) -> x + acc end)
IO.puts Enum.map([1, 2, 3, 4 , 5 , 6 ], fn(x) -> x * 2 end)