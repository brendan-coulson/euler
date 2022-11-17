defmodule Problem2 do
  def fib([head | tail]) when head > 4000000 do
    tail
  end
  def fib([head | tail]) when head < 4000000 do
    fib([head + hd(tail) | [head | tail]])
  end
  def run() do
    fib([1,1]) |> Enum.filter(&(rem(&1,2) == 0)) |> Enum.sum()
  end
end
