IO.puts "start"
answer = IO.gets "true or false "
IO.puts answer
case answer do
  "true\n" ->
    IO.puts "you choose true"
  "false\n" ->
    IO.puts "you choose false"
  _ ->
    IO.puts :stderr, "you have to choose true or false"
    exit(:seems_bad)
end
