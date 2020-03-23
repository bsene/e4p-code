defmodule SequenceTest do
  use ExUnit.Case
  doctest Sequence

  test "#fact should return 1 when 0!" do
    assert Sequence.fact(0) == 1
  end

  test "#fact should return 720 when 6!" do
    assert Sequence.fact(6) == 720
  end

  test "#fact should return 2 432 902 008 176 640 000 when 20!" do
    assert Sequence.fact(20) == 2_432_902_008_176_640_000
  end

  test "#swap_p should return {5,2} when {2,5} parameters were provided" do
    assert Sequence.swap_p({2,5}) == {5,2}
  end

  test "#comp_p should return false when {2,5} is provided" do
    assert Sequence.comp_p({2,5}) == false
  end

  test "#comp_p should return true when {5,5} is provided" do
    assert Sequence.comp_p({5,5}) == true
  end
end
