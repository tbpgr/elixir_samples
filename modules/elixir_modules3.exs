defmodule Hoge do
  def hoge(msg) do
    show_message(msg)
  end

  defp show_message(msg) do
    msg
  end
end

IO.puts Hoge.hoge("hoge")