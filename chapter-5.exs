defmodule Chapter5 do
  def fizzbuzz(0, 0, _), do: "FizzBuzz"
  def fizzbuzz(0, _, _), do: "Fizz"
  def fizzbuzz(_, 0, _), do: "Buzz"
  def fizzbuzz(_, _, third), do: third

  def fizzbuzz2(n), do: fizzbuzz(rem(n, 3), rem(n, 5), n)

  def prefix(first) do
    fn second -> "#{first} #{second}"end
  end
end

fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, third -> third
end

fizzbuzz2 = fn n -> fizzbuzz.(rem(n,3), rem(n, 5), n) end
fizzbuzz3 = &(fizzbuzz.(rem(&1, 3), rem(&1, 5), &1))

prefix = fn
  first -> fn
    second -> "#{first} #{second}"
  end
end

