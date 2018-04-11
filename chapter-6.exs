defmodule Chapter6 do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n) do
    n
    |> double
    |> double
  end

  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

  def middle(a, b), do: div(a + b, 2)
  def guess(target, range = first..last) do
    _guess(target, range, middle(first, last))
  end

  defp _guess(target, _..last, guess) when target > guess do
    IO.puts("Is it #{guess}")
    _guess(target, guess..last, middle(guess, last))
  end

  defp _guess(target, first.._, guess) when target < guess do
    IO.puts("Is it #{guess}")
    _guess(target, first..guess, middle(guess, first))
  end

  defp _guess(target, _, guess) when target === guess do
    target
  end

end


