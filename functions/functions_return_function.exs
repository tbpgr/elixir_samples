sum_to_s_f = fn (base) -> 
  fn (a, b) ->
     Integer.to_string(a + b, base)
  end
end
IO.puts sum_to_s_f.(10).(10, 6)
IO.puts sum_to_s_f.(2).(10, 6)
IO.puts sum_to_s_f.(8).(10, 6)
IO.puts sum_to_s_f.(16).(10, 6)
IO.puts sum_to_s_f.(36).(10, 6)
