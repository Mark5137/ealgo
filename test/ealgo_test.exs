defmodule EalgoTest do
  use ExUnit.Case
  doctest Ealgo

  test "greets the world" do
    assert Ealgo.hello() == :world
  end
end
