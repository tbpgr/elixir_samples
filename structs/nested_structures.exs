defmodule Person do
  defstruct name: "", age: 0
end

defmodule Group do
  defstruct name: "", leader: %{}, sub_leader: %{}
end

defmodule UserStruct do
  def use do
    black = %Group{ name: "black company", leader: %Person{ name: "watanube mikitaro", age: 50 }, sub_leader: %Person{ name: "hei tai", age: 20 } }
    study = %Group{ name: "study group", leader: %Person{ name: "high motivation man", age: 30 }, sub_leader: %Person{ name: "next high motivation man", age: 20 } }
    [black, study] |> Enum.each(fn (x) ->
      IO.inspect x
      IO.inspect x.name
      IO.inspect x.leader.name
      IO.inspect x.leader.age
      IO.inspect x.sub_leader.name
      IO.inspect x.sub_leader.age
      end
    )
    white = put_in(black.leader.name, "not watanube mikiaro")
    white = put_in(white.name, "white company")
    IO.inspect white
    IO.inspect white.name
    IO.inspect white.leader.name

    lazy = put_in(study.leader.name, "low motivation man")
    lazy = put_in(lazy.sub_leader.name, "next low motivation man")
    lazy = put_in(lazy.name, "lazy group")
    IO.inspect lazy
    IO.inspect lazy.name
    IO.inspect lazy.leader.name
  end
end

UserStruct.use
