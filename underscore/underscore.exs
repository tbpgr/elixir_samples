defmodule Hoge do
  def hoge(hoge, hige) do
    hige
  end
end

defmodule Hige do
  def hige(_hoge, hige) do
    hige
  end
end

IO.puts Hoge.hoge("hoge", "hige")
IO.puts Hige.hige("hoge", "hige")
