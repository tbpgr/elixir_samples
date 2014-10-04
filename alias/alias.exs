defmodule Hoge.Enum do
  def count(list) do
    Enum.count(list) * 2
  end
end

defmodule Hoge.List do
  def to_atom(list) do
    List.last(list)
  end
end

defmodule Hoge do
  alias Hoge.Enum, as: Enum

  def count(list) do
    Enum.count(list)
  end

  def orig_count(list) do
    Elixir.Enum.count(list)
  end

  def to_atom(list) do
    alias Hoge.List
    List.to_atom(list)
  end

  def orig_to_atom(list) do
    List.to_atom(list)
  end
end

IO.inspect Hoge.count([1,2,3])
IO.inspect Hoge.orig_count([1,2,3])
IO.inspect Hoge.to_atom('test')
IO.inspect Hoge.orig_to_atom('test')
