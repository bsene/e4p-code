defmodule Lists do
  def len([]), do: 0
  def len([_|t]), do: 1 + len(t)

  # sum of the list elements
  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  # double each element of the list
  def double([]), do: []
  def double([h|t]), do: [h * 2 | double(t)]

  #square each eleement of the list
  def square([]), do: []
  def square([h|t]), do: [h * h | square(t)]

  #map each element of the list with a function argument
  def map([], _func), do: []
  def map([h|t], func) do
    [func.(h) | map(t, func)]
  end

  def sum_pairs([]), do: []
  def sum_pairs([f,s | t]),do: [f + s | sum_pairs(t)] 

  def even_length?([]), do: true
  def even_length?([_|[]]), do: false
  def even_length?([_|t]),do: even_length?(t)
end
