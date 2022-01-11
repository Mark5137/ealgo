defmodule SearchTest do
  use ExUnit.Case
  doctest Search

  test "linear: returns 3" do
    collection = [1, 5, 10, 15, 20]
    assert Search.linear(collection, 15) == 3
  end

  test "linear: returns -1" do
    collection = [1, 5, 10, 15, 20]
    assert Search.linear(collection, 25) == -1
  end

  test "binary: returns 3" do
    collection = [1, 5, 10, 15, 20]
    assert Search.binary(collection, 15) == 3
  end

  test "binary: returns -1" do
    collection = [1, 5, 10, 15, 20]
    assert Search.binary(collection, 25) == -1
  end

  test "interpolation: returns 3" do
    collection = [1, 5, 10, 15, 20]
    assert Search.interpolation(collection, 15) == 3
  end

  test "interpolation: returns -1" do
    collection = [1, 5, 10, 15, 20]
    assert Search.interpolation(collection, 25) == -1
  end
end
