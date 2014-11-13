nums = 1..100 |> Enum.take(50)
ret = for num <- nums, into: [9999] do
  num * 3
end
IO.puts "nums = "
IO.inspect nums
IO.puts "ret = "
IO.inspect ret

ret = for num <- nums, into: "" do
  "#{num * 3}"
end

IO.puts "ret = "
IO.inspect ret
