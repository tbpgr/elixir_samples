int_ary = [1, 2, 3, 4, 5]

defmodule Disp do
  def disp_all(enum_or_stream) do
    Enum.each(enum_or_stream, fn x -> IO.puts x end)
  end
end

Disp.disp_all(Enum.map(int_ary, fn x -> x * 4 end))

stream = Stream.map(int_ary, fn x -> x * 4 end)
Disp.disp_all(Enum.take(stream, 3))
