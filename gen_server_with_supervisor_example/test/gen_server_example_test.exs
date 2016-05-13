defmodule GenServerExampleTest do
  use ExUnit.Case
  doctest GenServerExample

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "will put value in storage" do
    {:ok, server} = GenServerExample.Client.start_link
    GenServerExample.Client.set(server, "milk", 10)
    assert  {:ok, 10} == GenServerExample.Client.get(server, "milk")
  end

end
