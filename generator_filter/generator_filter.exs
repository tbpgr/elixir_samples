defmodule Hoge do
  def hoge do
    IO.inspect for n <- ["hOgE", "hIgE", "hAgE"], do: String.upcase(n)

    values = [ok: "hOgE", ok: "hIgE", ng: "hAgE"]
    # パターンマッチで ok のみを対象とする
    IO.inspect for {:ok, n} <- values, do: String.upcase(n)

    values = ["hOgE", "hIgE", "hAgE"]
    # フィルタで I を含むもののみを対象とする
    IO.inspect for n <- values, String.contains?(n, "I") , do: String.upcase(n)
  end
end

Hoge.hoge
