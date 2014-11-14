iwashi = "鰯を食べるaa"
IO.inspect String.length iwashi
IO.inspect byte_size iwashi
IO.inspect String.codepoints iwashi

ab =[<<97>>,<<98>>]
IO.inspect ab
IO.inspect Enum.join(ab)
IO.inspect Enum.join(ab) == "ab"
