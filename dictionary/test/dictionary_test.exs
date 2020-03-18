defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "word list should return empty list when no words qre provided" do
    assert Dictionary.word_list('') == []
  end
end
