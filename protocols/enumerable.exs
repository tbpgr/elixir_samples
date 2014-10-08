defmodule Person do
  defstruct name: 'unknown', age: 0
end

defmodule People do
  require Person
  defstruct people: [%Person{}]
end

defimpl Enumerable, for: People do
  def count(collection) do
    Enum.count(collection.people)
  end

  def member?(collection, value) do
    Enum.member?(collection.people, value)
  end

  def reduce(collection, acc, fun) do
    Enum.reduce(collection.people, acc, fun)
  end
end

defmodule Hoge do
  require Person
  require People
  require List

  def hoge do
    default_person = %Person{}
    tanaka = %Person{name: 'tanaka', age: 24}
    sato = %Person{name: 'sato', age: 23}
    suzuki = %Person{name: 'suzuki', age: 33}
    people = %People{people:  [default_person, tanaka, sato]}
    
    IO.inspect Enumerable.count(people)
    IO.inspect Enumerable.member?(people, sato)
    IO.inspect Enumerable.member?(people, suzuki)
    IO.inspect Enumerable.reduce(people, 0, fn(x, acc) -> x.age + acc end )
    Enum.each people, &IO.inspect(&1)
  end
end

Hoge.hoge
