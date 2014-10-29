sum2 = fn
  (0, b) -> 0
  (a, 0) -> 99
  (a, b) -> a + b
end

IO.inspect sum2.(1, 2)
IO.inspect sum2.(0, 5)
IO.inspect sum2.(5, 0)
