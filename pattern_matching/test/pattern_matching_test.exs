defmodule PatternMatchingTest do
  use ExUnit.Case
  doctest PatternMatching

  test "#swap should return empty tuple when no parameter is provided" do
    assert PatternMatching.swap() == {}
  end

  test "#swap should return parameter in reverse order when two parameter are provided" do
    assert PatternMatching.swap({1,2}) == {2,1}
    assert PatternMatching.swap({2,5}) == {5,2}
    assert PatternMatching.swap({18,2}) == {2,18}
  end

  test "#same should return true when two provided parameters are the same" do
    assert PatternMatching.same({2,2}) == true
  end

  test "#same should return false when two provided parameters are different" do
    assert PatternMatching.same({2,20}) == false
  end
end
