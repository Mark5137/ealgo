defmodule Search do
  def linear(collection, number, index \\ 0) do
    cond do
      index == length(collection) -> -1
      number == Enum.at(collection, index) -> index
      true -> linear(collection, number, index + 1)
    end
  end

  def binary(collection, number), do: binary(collection, number, 0, length(collection) - 1)

  def binary(_collection, _number, start, stop) when start > stop, do: -1

  def binary(collection, number, start, stop) do
    position = div(start + stop, 2)
    item = Enum.at(collection, position)

    cond do
      number < item -> binary(collection, number, start, position - 1)
      number > item -> binary(collection, number, position + 1, stop)
      true -> position
    end
  end

  def interpolation(collection, number), do: interpolation(collection, number, 0, length(collection) - 1)

  def interpolation(collection, number, start, stop) do
    if start <= stop && number >= Enum.at(collection, start) && number <= Enum.at(collection, stop) do
      position = round(start + (((stop - start) / (Enum.at(collection, stop) - Enum.at(collection, start))) * (number - Enum.at(collection, start))))
      item = Enum.at(collection, position)

      cond do
        number < item -> interpolation(collection, number, start, position - 1)
        number > item -> interpolation(collection, number, position + 1, stop)
        true -> position
      end
    else
      -1
    end
  end
end
