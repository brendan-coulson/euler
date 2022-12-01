defmodule Problem10Test do
  use ExUnit.Case
  doctest Problem10

  @tag timeout: 300_000
  test "sieving" do
    assert Problem10.init(10) == [2,3,4,5,6,7,8,9,10]

    assert Problem10.filter(Problem10.init(10)) == [2,3,5,7]

    assert Problem10.sum_primes(1000) == 76_127
    #assert Problem10.sum_primes(10_000) == 5_736_396
    # assert Problem10.sum_primes(100_000) == 454_396_537
    #assert Problem10.sum_primes(1_000_000) == 37_550_402_023
    #assert Problem10.sum_primes(2_000_000) == 142_913_828_922

  end

end
