defmodule Dictionary do

  def random_list(lst) do
    lst |> word_list |> Enum.random
  end
  def word_list(lst) do
    lst
    |> String.split("\n")
  end

  # API methods
  def random_word() do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> random_list
  end
end
