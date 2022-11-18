defmodule Problem4 do
  @doc """
  Reverse the digits of a number.
  e.g. reverse(123456) returns 654321
  """
  def reverse(n), do: reverse(n,0)

  defp reverse(0,r), do: r

  defp reverse(n,r) do
    reverse(div(n,10),10*r + rem(n,10))
  end
  defp is_palindrome(n) do
    reverse(n) == n
  end

  def search(), do: search(0,999)
  defp search(largest,a) when a < 100, do: largest
  defp search(largest,a) when a >= 100 and rem(a,11) == 0, do: search(largest,a,999,1)
  defp search(largest,a) when a >= 100 and rem(a,11) != 0, do: search(largest,a,990,11)

  defp search(largest,a,b,db) do
    cond do
      is_palindrome(a*b) and a*b > largest -> search(a*b,a-1)
      b < a -> search(largest,a-1)
      true -> search(largest,a,b-db,db)
    end
  end

end
