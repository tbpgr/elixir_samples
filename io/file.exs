{:ok, file} = File.open "hoge.exs", [:write]
IO.binwrite file, "IO.puts 'hoge'"
File.close file
IO.inspect File.read "hoge.exs"
