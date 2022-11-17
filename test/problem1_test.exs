defmodule Problem1Test do
  use ExUnit.Case
  doctest Problem1

  test "is correct" do
    assert Problem1.run == 233168
  end
end
