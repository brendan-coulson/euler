defmodule Problem4Test do
  use ExUnit.Case
  doctest Problem4

  test "reverse works" do
    assert Problem4.reverse(1234567) == 7654321
  end

  test "palindrome found" do
    assert Problem4.search() == 906609
  end
end
