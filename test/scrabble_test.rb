gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_exists
    game = Scrabble.new

    assert_instance_of Scrabble, game
  end

  def test_it_can_score_a_single_letter
    game = Scrabble.new

    assert_equal 1, game.score("a")
    assert_equal 4, game.score("f")
    refute_equal 5, game.score("f")
  end

  def test_it_can_score_a_whole_word
    game = Scrabble.new

    assert_equal 8, game.score("hello")
  end

  def test_it_can_score_empty_string_as_zero
    game = Scrabble.new

    assert_equal 0, game.score("")
  end

  def test_it_can_score_nil_input_as_nil
    game = Scrabble.new

    assert_equal nil, game.score(nil)
  end

end
