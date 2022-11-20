defmodule Problem7 do
  def primes(limit), do: primes(limit,[],0)
  defp primes(limit, lst, n) when n == limit,  do: hd(lst)
  defp primes(limit, lst, n) when n < limit do
    primes(limit,[next_prime(lst) | lst],n+1)
  end

  defp next_prime([]), do: 2
  defp next_prime([2]), do: 3
  defp next_prime(lst) do
    next_prime(lst,hd(lst)+2)
  end
  defp next_prime(lst,candidate) do
    cond do
      Enum.any?(lst,fn x -> rem(candidate,x) == 0 end) -> next_prime(lst,candidate+2)
      true -> candidate
    end
  end

end
