sum2 = fn (a, b) -> a + b end
IO.inspect sum2.(1, 2)
IO.inspect sum2.(3, 4)

sum_tuple2 = fn { a, b, c } -> a + b + c end
IO.inspect sum_tuple2.({1, 2, 3})
IO.inspect sum_tuple2.({3, 4, 5})