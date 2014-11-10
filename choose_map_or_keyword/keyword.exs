kl = [key1: :value1_1, key2: :value2, key1: :value1_2]
# key に対応する value を全て取得。1 key に複数 vlaue 取得の例
IO.inspect Keyword.take(kl, [:key1])

kl |> Enum.each(&(IO.inspect &1))
