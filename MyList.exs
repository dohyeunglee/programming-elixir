defmodule MyList do
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def filter([], _), do: []

  def map([head | tail], func) do
    [func.(head) | map(tail, func)]
  end

  def map([], _), do: []

  def find(list, func), do: _find(list, func, 0)

  defp _find([head | tail], func, index) do
    if func.(head) do
      {head, index}
    else
      _find(tail, func, index + 1)
    end
  end

  defp _find([], _, _), do: {nil, nil}

  def findIndex(list, func) do
    {_, index} = find(list, func)
    index
  end

  def forEach([head | tail], func) do
    func.(head)
    forEach(tail, func)
  end

  def forEach([], _), do: :ok

  def includes([head | _], target) when head === target, do: true
  def includes([head | tail], target) when head !== target, do: includes(tail, target)
  def includes([], _), do: false

  def reduce([head | tail], func, start) do
    reduce(tail, func, func.(start, head))
  end
  def reduce([], _, start), do: start

end


