defmodule RegexpSample do
  def try_rescue(regexp, ops) do
    try do
      Regex.compile!(regexp, ops)
    rescue
      e in Regex.CompileError -> e
    end
  end
end

# Regex.compile(source, options \\ "")
IO.inspect Regex.compile("hoge")
IO.inspect Regex.compile("A-Z")
IO.inspect Regex.compile("[A-Z]")
IO.inspect Regex.compile("[A-Z]", "i")
IO.inspect Regex.compile("[A-Z", "i")

# Regex.compile!(source, options \\ "")
IO.inspect RegexpSample.try_rescue("[A-Z", "i")

# Regex.escape(string)
IO.inspect Regex.escape("test")
IO.inspect Regex.escape(".")
IO.inspect Regex.escape("{")

# Regex.match?(regex, string)
IO.inspect Regex.match?(~r/h.ge/, "hoge")
IO.inspect Regex.match?(~r/h.ge/, "hige")
IO.inspect Regex.match?(~r/h.ge/, "hohe")

# Regex.named_captures(regex, string, options \\ [])
reg = ~r/(?<prefix>.*?)\|(?<main>.*?)\|(?<sufix>.*)/
IO.inspect Regex.named_captures(reg, "pre_value|main_value|sufix_value")

# Regex.names(regex)
IO.inspect Regex.names(reg)

# Regex.opts(regex)
IO.inspect Regex.opts(~r/hoge/im)

# Regex.replace(regex, string, replacement, options \\ [])
IO.inspect Regex.replace(~r/xyz/, "vwxyz", "@")
IO.inspect Regex.replace(~r/v(x|y)z/, "vxzvyz", "[\\1]")
IO.inspect Regex.replace(~r/v(x|y)z/, "vxzvyz", fn _, x -> x <> "@" end)

# Regex.run(regex, string, options \\ [])
IO.inspect Regex.run(~r/h.ge/, "hogehigehage")

# Regex.scan(regex, string, options \\ [])
IO.inspect Regex.scan(~r/h.ge/, "hogehigehage")

# Regex.source(regex)
IO.inspect Regex.source(~r/h.ge/i)

# Regex.split(regex, string, options \\ [])
IO.inspect Regex.split(~r/[,\|\t]/, "hoge,hige\thage|end")
