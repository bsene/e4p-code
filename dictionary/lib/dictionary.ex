defmodule Dictionary do
  def random_list(lst) do
    lst |> word_list |> Enum.random
  end
  def word_list(lst) do
    lst
    |> String.split("\n")
  end
end
