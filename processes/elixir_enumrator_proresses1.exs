defmodule ProcessTest do
  def do_receive do
    receive do
      {:key, msg} -> "match " <> msg
      {:other, msg} -> "not match" <> msg
    after
      1_000 -> "after 1sec"
    end
  end
end

send self, {:key, "value"}
send self, {:other, "other"}
IO.puts ProcessTest.do_receive
IO.puts ProcessTest.do_receive
IO.puts ProcessTest.do_receive
