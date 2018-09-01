require 'minitest/autorun'
require_relative 'scrabble_score'

class ScrabbleTest < Minitest::Test
  def test_empty_word_scores_zero
    assert_equal 0, ScrabbleScore.new('').score
  end

  def test_whitespace_scores_zero
    assert_equal 0, ScrabbleScore.new(" \t\n").score
  end

  def test_nil_scores_zero
    assert_equal 0, ScrabbleScore.new(nil).score
  end

  def test_scores_very_short_word
    assert_equal 1, ScrabbleScore.new('a').score
  end

  def test_scores_other_very_short_word
    assert_equal 4, ScrabbleScore.new('f').score
  end

  def test_simple_word_scores_the_number_of_letters
    assert_equal 6, ScrabbleScore.new('street').score
  end

  def test_complicated_word_scores_more
    assert_equal 22, ScrabbleScore.new('quirky').score
  end

  def test_scores_are_case_insensitive
    assert_equal 41, ScrabbleScore.new('OXYPHENBUTAZONE').score
  end

  def test_convenient_scoring
    assert_equal 13, ScrabbleScore.score('alacrity')
  end
end
