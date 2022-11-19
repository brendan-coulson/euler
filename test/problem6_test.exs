defmodule Problem6Test do
  use ExUnit.Case
  doctest Problem6

  test "sum_squares works" do
    assert Problem6.sum_squares(1) == 1
    assert Problem6.sum_squares(2) == 5
    assert Problem6.sum_squares(3) == 14
    assert Problem6.sum_squares(10) == 385
  end

  test "square_sum works" do
    assert Problem6.square_sum(10) == 3025
  end

  test "run works" do
    assert Problem6.run(10) == 2640
    assert Problem6.run(100) == 25164150
  end
end
