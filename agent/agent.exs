defmodule AgentSample do
  def start_link(fun) do
    {:ok, agent} = Agent.start_link(fun)
    agent
  end

  def get(agent, fun) do
    Agent.get(agent, fun)
  end

  def update(agent, fun) do
    Agent.update(agent, fun)
  end

  def stop(agent) do
    Agent.stop(agent)
  end
end

agent = AgentSample.start_link(fn ->(0) end)
IO.puts AgentSample.get(agent, fn n ->(n) end)
AgentSample.update(agent, fn n ->(1 + n) end)
IO.puts AgentSample.get(agent, fn n ->(n) end)
AgentSample.update(agent, fn n ->(2 + n) end)
IO.puts AgentSample.get(agent, fn n ->(n) end)
AgentSample.stop(agent)
