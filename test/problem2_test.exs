defmodule Problem2Test do
  use ExUnit.Case
  doctest Problem2

  test "is correct" do
    assert Problem2.run == 4613732
  end
end
