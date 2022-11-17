defmodule Problem1 do
  def run do
    Enum.to_list(3..999//3) ++ Enum.to_list(5..999//5) |> Enum.uniq() |> Enum.sum()
  end
end
