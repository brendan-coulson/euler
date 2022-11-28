defmodule Problem9Test do
  use ExUnit.Case
  doctest Problem9

  test "triple" do
    assert Problem9.triple(7) == [7,24,25]
    assert Problem9.triple(20) == [20,99,101]
  end

  test "run" do
    assert Problem9.run() == 31875000
  end
end
