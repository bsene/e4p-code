defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "should return empty list when no words are provided" do
    assert Dictionary.word_list("") == [""]
  end

  test "should return list with one element when one word is provided" do
    assert Dictionary.word_list("toto") == ["toto"]
  end
  
  test "should return list with two or more elements when at leat two words are provided" do
    assert Dictionary.word_list("toto\npapa") == ["toto","papa"]
    assert Dictionary.word_list("toto\npapa\nmaman") == ["toto","papa", "maman"]
  end

  test "should return randomized list" do
    words = "toto\npapa\n"
    assert Dictionary.random_list(words) != Dictionary.random_list(words)
    words = "toto\npapa\nmaman"
    assert Dictionary.random_list(words) != Dictionary.random_list(words)
  end
end
