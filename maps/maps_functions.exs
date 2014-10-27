# delete(map, key)
IO.inspect "" 
IO.inspect "** delete(map, key) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.delete(tanaka, :name)

# drop(dict, keys)
IO.inspect "" 
IO.inspect "** drop(dict, keys) **"
tanaka = %{name: "tanaka", age: 34, nationality: "Japanese"}
IO.inspect Map.drop(tanaka, [:name, :age])

# equal?(dict1, dict2)
IO.inspect "" 
IO.inspect "** equal?(dict1, dict2) **"
tanaka1 = %{name: "tanaka", age: 34}
suzuki = %{name: "suzuki", age: 34}
tanaka2 = %{name: "tanaka", age: 34}
IO.inspect Map.equal?(tanaka1, suzuki)
IO.inspect Map.equal?(tanaka1, tanaka2)

# fetch(dict, key)
IO.inspect "" 
IO.inspect "** fetch(dict, key) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect tanaka
IO.inspect Map.fetch(tanaka, :name)
IO.inspect Map.fetch(tanaka, :nationality)

# fetch!(map, key)
IO.inspect "" 
IO.inspect "** fetch!(map, key) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect tanaka
IO.inspect Map.fetch!(tanaka, :name)
# raise error
# IO.inspect Map.fetch!(tanaka, :nationality)
IO.inspect "" 
IO.inspect "** IO.inspect Map.fetch!(tanaka, :nationality) **"

# from_struct(struct)
IO.inspect "" 
IO.inspect "** from_struct(struct) **"
defmodule Person do
  defstruct [:name, :age]
end

defmodule PersonUser do
  require Person
  def use_person do
    IO.inspect Map.from_struct(Person)
    IO.inspect Map.from_struct(%Person{name: "tanaka", age: 34})
  end
end
PersonUser.use_person

# get(dict, key, default \\ nil)
IO.inspect "" 
IO.inspect "** get(dict, key, default \\ nil) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.get(tanaka, :name)
IO.inspect Map.get(tanaka, :nationality, "unknown")
tanaka = %{name: "tanaka", age: 34, nationality: "Japanese"}
IO.inspect Map.get(tanaka, :nationality, "unknown")

# has_key?(dict, key)
IO.inspect "" 
IO.inspect "** has_key?(dict, key) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.has_key?(tanaka, :name)
IO.inspect Map.has_key?(tanaka, :nationality)

# keys(dict)
IO.inspect "" 
IO.inspect "** keys(dict) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.keys(tanaka)

# merge(map1, map2)
IO.inspect "" 
IO.inspect "** merge(map1, map2) **"
tanaka1 = %{name: "tanaka", age: 34}
tanaka2 = %{nationality: "Japanese", height: 173}
IO.inspect tanaka1
IO.inspect tanaka2
IO.inspect Map.merge(tanaka1, tanaka2)

# merge(dict1, dict2, fun \\ fn _k, _v1, v2 -> v2 end)
IO.inspect "" 
IO.inspect "** merge(dict1, dict2, fun \\ fn _k, _v1, v2 -> v2 end) **"
map1 = %{a: 1, b: 11}
map2 = %{a: 111, c: 1111}
IO.inspect map1
IO.inspect map2
IO.inspect Map.merge(map1, map2, fn(_k, v1, v2) ->
  v1 + v2
end)

# new()
IO.inspect "" 
IO.inspect "** new() **"
IO.inspect Map.new

# pop(dict, key, default \\ nil)
IO.inspect "" 
IO.inspect "** pop(dict, key, default \\ nil) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect tanaka
IO.inspect Map.pop(tanaka, :name)

# put(map, key, val)
IO.inspect "" 
IO.inspect "** put(map, key, val) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect tanaka
IO.inspect Map.put(tanaka, :nationality, "Japanese")
IO.inspect Map.put(tanaka, :nationality, "American")

# put_new(dict, key, value)
IO.inspect "" 
IO.inspect "** put_new(dict, key, value) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect tanaka
IO.inspect Map.put_new(tanaka, :nationality, "Japanese")
IO.inspect Map.put_new(tanaka, :nationality, "American")

# size(map)
IO.inspect "" 
IO.inspect "** size(map) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.size(tanaka)

# split(dict, keys)
IO.inspect "" 
IO.inspect "** split(dict, keys) **"
tanaka = %{name: "tanaka", age: 34, nationality: "Japanese"}
IO.inspect Map.split(tanaka, [:name, :age])

# take(dict, keys)
IO.inspect "" 
IO.inspect "** take(dict, keys) **"
tanaka = %{name: "tanaka", age: 34, nationality: "Japanese"}
IO.inspect Map.take(tanaka, [:name, :age])

# to_list(dict)
IO.inspect "" 
IO.inspect "** to_list(dict) **"
tanaka = %{name: "tanaka", age: 34, nationality: "Japanese"}
IO.inspect Map.to_list(tanaka)

# update(dict, key, initial, fun)
IO.inspect "" 
IO.inspect "** update(dict, key, initial, fun) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.update(tanaka, :age, 1, &(&1 + 1))
suzuki = %{name: "suzuki"}
IO.inspect Map.update(suzuki, :age, 1, &(&1 + 1))

# update!(dict, key, fun)
IO.inspect "" 
IO.inspect "** update!(dict, key, fun) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.update!(tanaka, :age, &(&1 + 1))

# values(dict)
IO.inspect "" 
IO.inspect "** values(dict) **"
tanaka = %{name: "tanaka", age: 34}
IO.inspect Map.values(tanaka)
