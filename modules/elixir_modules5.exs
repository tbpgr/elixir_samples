defmodule Hoge do
  def hoge(x) do
    IO.puts x
  end

  def hoge(x,0) do
  end

  def hoge(x,repeat) do
    repeat --
    IO.puts x
  end

end

hoge_fn = &Hoge.hoge
hoge_fn.call("hoge")
hoge_fn.call("hoge",3)
hoge_fn.call("hoge",0)