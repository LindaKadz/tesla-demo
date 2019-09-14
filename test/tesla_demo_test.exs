defmodule TeslaDemoTest do
  use ExUnit.Case
  doctest TeslaDemo

  test "greets the world" do
    assert TeslaDemo.hello() == :world
  end
end
