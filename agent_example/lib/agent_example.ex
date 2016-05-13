defmodule AgentExample do
  @moduledoc """
  An documentation for agent Kappa
  """

  @type on_start :: {:ok, pid} | {:error, {:already_started, pid} | term}

  @doc "start an agent"
  @spec start_link :: on_start
  def start_link do
    Agent.start_link(fn-> %{} end)
  end

  @doc "get a key"
  @spec get(pid, String.t) :: integer
  def get(agent, key) do
    Agent.get(agent, fn(state)-> Map.fetch(state, key) end)
  end

  @doc "write a value"
  @spec set(pid, String.t, integer) :: any()
  def set(agent, key, value) do
    Agent.update(agent, fn(state)-> Map.put(state, key, value) end)
  end
end
