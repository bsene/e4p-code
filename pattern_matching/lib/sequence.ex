defmodule Sequence do
  def fact(0), do: 1
  def fact(n), do: fact(n-1) * n

  def swap_p({f,s}), do: {s,f}

  def comp_p({f,s}), do: f == s and true
  def comp_p({f,s}), do:  f != s and false
end
