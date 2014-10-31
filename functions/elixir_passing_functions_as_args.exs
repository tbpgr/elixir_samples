sum_to_s_f = fn (base) -> 
  fn (a, b) ->
     Integer.to_string(a + b, base)
  end
end

defmodule Sum do
  def call_sum(fun, a, b) do
    fun.(a, b)
  end
end

sum_base10 = sum_to_s_f.(10)
IO.puts Sum.call_sum(sum_base10, 10, 6)
sum_base2 = sum_to_s_f.(2)
IO.puts Sum.call_sum(sum_base2, 10, 6)
sum_base8 = sum_to_s_f.(8)
IO.puts Sum.call_sum(sum_base8, 10, 6)
sum_base16 = sum_to_s_f.(16)
IO.puts Sum.call_sum(sum_base16, 10, 6)
sum_base36 = sum_to_s_f.(36)
IO.puts Sum.call_sum(sum_base36, 10, 6)
