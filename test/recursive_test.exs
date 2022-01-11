defmodule RecursiveTest do
  use ExUnit.Case
  doctest Recursive

  test "returns 0" do
    assert Recursive.fib(0) == 0
  end

  test "returns 1" do
    assert Recursive.fib(1) == 1
  end

  test "returns 5" do
    assert Recursive.fib(10) == 55
  end
end
