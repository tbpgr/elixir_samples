defmodule KV do
  def start do
    {:ok, spawn_link(fn -> loop(%{}) end)}
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send caller, Map.get(map, key)
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end

{:ok, pid} = KV.start
send pid, {:get, :hoge, self()}
flush
send pid, {:put, :hoge, :world}
send pid, {:get, :hoge, self()}
flush
send pid, {:put, :hoge, :hoge_world2}
send pid, {:put, :hige, :higeworld2}
send pid, {:get, :hoge, self()}
send pid, {:get, :hige, self()}
flush
