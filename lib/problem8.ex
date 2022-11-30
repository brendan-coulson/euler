defmodule Problem8 do

  def product(lst,digits) do
    lst |> Enum.take(digits) |> Enum.reduce(fn x, acc -> x * acc end)
  end

  def greatest([],maximum,_), do: maximum
  def greatest(lst,maximum,digits) do
    p = product(lst,digits)
    cond do
      p > maximum -> greatest(tl(lst),p,digits)
      true -> greatest(tl(lst),maximum,digits)
    end
  end
  def greatest(lst,digits), do: greatest(lst,0,digits)


end
