defmodule Person do
  defstruct name: 'unknown', age: 0
end

defprotocol Blank do
  @doc "Returns true if data is considered blank/empty"
  def blank?(data)
end

defimpl Blank, for: Integer do
  def blank?(_), do: false
end

defimpl Blank, for: List do
  def blank?([]), do: true
  def blank?(_),  do: false
end

defimpl Blank, for: Map do
  def blank?(map), do: map_size(map) == 0
end

defimpl Blank, for: Person do
  def blank?(%Person{name: 'unknown', age: 0}), do: true
  def blank?(_), do: false
end

defmodule Hoge do
  require Person

  def hoge do
    default_person = %Person{}
    tanaka = %Person{name: 'tanaka', age: 24}
  
    IO.inspect Blank.blank?(%{})
    IO.inspect Blank.blank?(default_person)
    IO.inspect Blank.blank?(tanaka)
  end
end

IO.inspect Blank.blank?(0)
IO.inspect Blank.blank?(1)
IO.inspect Blank.blank?([])
IO.inspect Blank.blank?([1])
Hoge.hoge
