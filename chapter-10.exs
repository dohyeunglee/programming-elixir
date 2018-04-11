defmodule Chapter10 do
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end
  def filter([], _), do: []

  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end
  def all?([], _), do: true

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def split(list, length) when length >= 0, do: _split(list, length, [])

  defp _split([], _, first), do: {first, []}
  defp _split([head | tail], length, first) when length(first) < length do
    _split(tail, length, first ++ [head])
  end
  defp _split(list, _, first), do: {first, list}
end