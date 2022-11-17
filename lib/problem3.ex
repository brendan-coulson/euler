defmodule Problem3 do
  def factor(n) do
    upper = :math.sqrt(n) |> trunc()
    first = Enum.to_list(2..upper) |> Enum.find(fn x -> rem(n,x) == 0 end)
    factor(n,first)
  end
  def factor(n,nil), do: n
  def factor(n,first) do
    factor(div(n,first))
  end
  def run() do
    factor(600851475143)
  end
end
