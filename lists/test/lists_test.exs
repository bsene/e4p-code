defmodule ListsTest do
  use ExUnit.Case
  doctest Lists

  test "#len should return 0 when list is empty" do
    assert Lists.len([]) == 0
  end

  test "#len should return 1080 when list of 1080 items is provided" do
    lst = for i <- 1..1080, do: i
    assert lst |> Lists.len == 1080
  end

  test "#sum should return 0 when empty list is provided" do
    assert [] |> Lists.sum == 0
  end
  test "#sum should return 6 when [1,2,3] is provided" do
    assert [1,2,3] |> Lists.sum == 6
  end

  test "#double should return empty list when [] is provided" do
    assert [] |> Lists.double == []
  end

  test "#double should return [4,8,12] when [2,4,6] is provided" do
    assert [2,4,6] |> Lists.double == [4,8,12]
  end

  test "#square should return empty list when [] is provided" do
    assert [] |> Lists.square == []
  end

  test "#square should return [4,16,36] when [2,4,6] is provided" do
    assert [2,4,6] |> Lists.square == [4,16,36]
  end

  test "#map should return empty list when [] is provided" do
    assert Lists.map([], fn x -> x end) == []
    assert Lists.map([], &(&1)) == []
  end

  test "#map should return [1,3,5] when [2,4,6] is provided" do
    assert Lists.map([2,4,6], fn x -> x-1 end) == [1,3,5]
    assert Lists.map([2,4,6], &(&1-1)) == [1,3,5]
  end

  test "#even_length? should return false when number of list elements is odd" do
    assert [1,2,3] |> Lists.even_length? == false
  end

  test "#even_length? should return true when number of list elements is even" do
    assert [1,2,3,4] |> Lists.even_length? == false
  end
end
