defmodule GenServerExample do
  use Application

  def start(_type, _args) do
    GenServerExample.Supervisor.start_link
  end
end
