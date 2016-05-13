defmodule GenServerExample.Server do
  use GenServer

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.fetch(state, key), state}
  end

  def handle_cast({:set, key, value}, state) do
    state = Map.put(state, key, value)
    {:noreply, state}
  end
end
