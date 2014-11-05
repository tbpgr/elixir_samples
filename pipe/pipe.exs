nums = (1..100)
first_10_nums = Enum.take(nums, 10)
add_one_nums = Enum.map(first_10_nums, &(&1+1))
total = Enum.sum(add_one_nums)

IO.inspect total

IO.inspect Enum.sum(Enum.map(Enum.take((1..100), 10), &(&1+1)))

IO.inspect (1..100)
  |> Enum.take(10)
  |> Enum.map(&(&1+1))
  |> Enum.sum
