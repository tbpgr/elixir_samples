defmodule Hoge do
  def hoge(x), do: x <> "hoge"
end

defmodule Hige do
  def hige(x), do: (
    y = x <> "hige"
    String.upcase(y)
  )
end

defmodule Hage do
  def hage(x) do
    y = x <> "hage"
    String.downcase(y)
  end
end

IO.puts Hoge.hoge("MeSsAgE")
IO.puts Hige.hige("MeSsAgE")
IO.puts Hage.hage("MeSsAgE")
