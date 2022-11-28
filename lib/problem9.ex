defmodule Problem9 do

  def run(a,b,c) when a*a+b*b==c*c and a + b + c == 1000, do: a * b * c
  def run(a,b,c) when b > c, do: run(a+1, a+2, 1000-(a+a+3))
  def run(a,b,_), do: run(a,b+1,1000-(a+b+1))
  def run(), do: run(1,2,997)

end
