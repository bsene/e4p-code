defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game
  test "#new_game returns structure" do

    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "game instance letters is composed of lowercases ASCII characters" do
    game = Game.new_game()
    assert game.letters |> Enum.map(fn el -> String.match?(el, ~r/[a-z]/) end)
  end

  test "state isn't changed for :won or :lost game" do
    for state <- [ :won, :lost ] do
      game = Game.new_game |> Map.put(:game_state, state)
      assert { game, _ } = Game.make_move(game, "x")
    end
  end
end