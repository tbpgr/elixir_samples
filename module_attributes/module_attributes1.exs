defmodule Hook do
  def on_def(_env, kind, name, args, guards, body) do
    IO.puts "kind: #{kind}"
    IO.puts "name: #{name}"
    IO.puts "guards: "
    IO.inspect guards
    IO.puts "args: "
    IO.inspect args
    IO.puts "body: "
    IO.puts Macro.to_string(body)
  end
end

defmodule HookUser do
  @on_definition {Hook, :on_def}

  def hoge(msg) do
    IO.puts msg
  end

  def hoge_with_guard(list) when is_atom(list) or is_list(list) do
    IO.inspect list
  end
end
