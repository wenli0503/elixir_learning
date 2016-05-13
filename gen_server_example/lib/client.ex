defmodule GenServerExample.Client do
  use GenServer

  def start_link do
    GenServer.start_link(GenServerExample.Server, :ok, [])
  end

  @spec get(pid, String.t) :: atom
  def get(server, key) do
    GenServer.call(server, {:get, key})
  end

  @spec set(pid, String.t, integer) :: any()
  def set(server, key, value) do
    GenServer.cast(server, {:set, key, value})
  end
end
