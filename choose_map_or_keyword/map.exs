defmodule PersonDivide do
  def person(%{name: name, age: age}) when name == "tanaka" do
    "tanaka (#{age})"
  end

  def person(%{name: name, age: age}) when age <= 19 do
    "成年 #{name} (#{age})"
  end

  def person(%{name: name, age: age}) when age > 19 do
    "未成年 #{name} (#{age})"
  end

  def person(_e) do
    "invalid"
  end
end

people = [
  %{ name: "tanaka", age: 19 },
  %{ name: "tanaka", age: 20 },
  %{ name: "suzuki", age: 19 },
  %{ name: "suzuki", age: 20 },
  %{ name: "sato" }
]

people |> Enum.map(&(PersonDivide.person(&1))) |> Enum.each(&(IO.inspect(&1)))
