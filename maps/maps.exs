map = %{"key1" => "vlaue1", "key2" => "vlaue2"}
IO.inspect map

# Access Map
IO.inspect map["key1"]
IO.inspect map["key2"]

map = %{key1: "vlaue1", key2: "vlaue2"}
IO.inspect map
IO.inspect map[:key1]
IO.inspect map[:key2]
# key が atom の場合は dot 呼び出しが可能
IO.inspect map.key1
IO.inspect map.key2
