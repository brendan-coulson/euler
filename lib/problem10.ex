defmodule Problem10 do

  def init(limit) do
    for n <- 2..limit, do: n
  end

  def filter([]), do: []
  def filter(lst) do
    head = hd(lst)
    [head | filter(Enum.filter(tl(lst),fn x -> rem(x,head) != 0 end))]
  end

  def sum_primes(limit), do: init(limit) |> filter() |> Enum.sum()

end
