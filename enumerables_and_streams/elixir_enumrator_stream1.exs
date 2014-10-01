int_ary = [1, 2, 3, 4, 5]
string_ary = ["a", "b", "c"]
mix_ary = ["a", 2]

defmodule Disp do
  def disp_all(enum) do
    Enum.each(enum, fn x -> IO.puts x end)
  end
end

Disp.disp_all(Enum.map(int_ary, fn x -> x * 4 end))

IO.puts Enum.all?(int_ary, &is_integer/1) # => true
IO.puts Enum.all?(string_ary, &is_integer/1) # => false
IO.puts Enum.all?(mix_ary, &is_integer/1) # => false

IO.puts Enum.any?(int_ary, &is_integer/1) # => true
IO.puts Enum.any?(string_ary, &is_integer/1) # => false
IO.puts Enum.any?(mix_ary, &is_integer/1) # => true

IO.puts Enum.reduce(int_ary, &+/2)
IO.puts Enum.reduce(string_ary, &<>/2)
