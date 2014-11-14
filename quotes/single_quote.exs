hello_chars = 'hello'
IO.inspect hello_chars
# シングルクォートリテラルで宣言された文字列は List
IO.inspect is_list(hello_chars)
# シングルクォートリテラルで宣言された文字列の中身は Integer
for char_cd <- 'hello' do
  IO.puts is_integer(char_cd)
  IO.puts Integer.to_string(char_cd)
end
IO.puts ""
# 文字コードの数値リストと等価
IO.inspect hello_chars == [104,101,108,108,111]

# 通常のリストと同様の操作が可能

## concat
IO.inspect 'hello' ++ 'world'
## lower to upper
IO.inspect Enum.map('hello', &(&1 - 32))
