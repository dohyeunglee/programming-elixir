defmodule Chapter7 do
  def sum([head | tail]), do: head + sum(tail)
  def sum([]), do: 0

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end
  def mapsum([], _), do: 0

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n < 122 do
    [head + n | caesar(tail, n)]
  end
  def caesar([_ | tail], n) do
    ['?' | caesar(tail, n)]
  end

  def span(from, to) when from === to do
    [from]
  end
  def span(from, to) when from < to do
    [from | span(from + 1, to)]
  end
end