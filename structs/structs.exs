defmodule Person do
  defstruct name: 'unknown', age: 0
end

defmodule Hoge do
  require Person

  def hoge do
    default_person = %Person{}
    tanaka = %Person{name: 'tanaka', age: 24}
  
    Hoge.print_person(default_person)
    Hoge.print_person(tanaka)
  end

  def print_person(person) do
    IO.inspect person
    IO.puts person.name
    IO.inspect person.age
  end
end

Hoge.hoge
