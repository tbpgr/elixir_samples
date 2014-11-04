defmodule Hoge do
  def hoge(args, opt1 \\ 2, opt2 \\ 'default') do
    [args, opt1, opt2]
  end
end

IO.inspect Hoge.hoge(1, 3, 'hoge')
IO.inspect Hoge.hoge(1, 3)
IO.inspect Hoge.hoge(1)

# コンパイルエラーになる
# ** (CompileError) iex:6: def hige/1 conflicts with defaults from def hige/2
# defmodule Hige do
#   def hige(args1, args2 \\ 99) do
#     [args1, args2]
#   end

#   def hige(args1) when is_list(args1) do
#     args1
#   end
# end

# 空実装でコンパイルエラーを回避
defmodule Hige do
  def hige(args1, args2 \\ 99) do
    [args1, args2]
  end

  def hige(args1) do
    args1
  end
end


