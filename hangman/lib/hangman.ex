defmodule Hangman do
  def hello do
    IO.puts Dictionary.random_list("../dictionary/assets/words.txt" |> File.read!())
  end
end
