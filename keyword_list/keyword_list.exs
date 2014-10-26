defmodule Hoge do
  def hoge(keyword_list) do
    IO.inspect keyword_list
  end
end

IO.inspect [key1: "value1", key2: "value2", key3: "value3"]

Hoge.hoge [key1: "value1", key2: "value2", key3: "value3"]
Hoge.hoge key1: "value1", key2: "value2", key3: "value3"

IO.inspect {1, [key1: "value1", key2: "value2", key3: "value3"]}
keyword_lists = {1, key1: "value1", key2: "value2", key3: "value3"}
IO.inspect keyword_lists
