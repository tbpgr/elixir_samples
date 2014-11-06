defmodule ParentA do
  defmodule ChildA do
    def hoge do
      "hoge1"
    end
  end

  defmodule ChildB do
    def hoge do
      "hoge2"
    end
  end
end

IO.puts ParentA.ChildA.hoge
IO.puts ParentA.ChildB.hoge

defmodule ParentB.ChildA do
  def hoge do
    "hoge1"
  end
end

defmodule ParentB.ChildB do
  def hoge do
    "hoge2"
  end
end

IO.puts ParentB.ChildA.hoge
IO.puts ParentB.ChildB.hoge
