defmodule Problem7Test do
  use ExUnit.Case
  doctest Problem7

  test "works" do
    assert Problem7.primes(6) == 13
    assert Problem7.primes(8) == 19
    assert Problem7.primes(10_001) == 104743
  end


end
