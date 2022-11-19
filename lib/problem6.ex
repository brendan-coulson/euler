defmodule Problem6 do
  def sum_squares(n) when n == 1, do: 1
  def sum_squares(n) when n > 1, do: :math.pow(n,2) + sum_squares(n-1)

  def square_sum(n), do: :math.pow(Enum.sum(1..n),2)

  def run(n), do: square_sum(n) - sum_squares(n)

end
