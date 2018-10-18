require "test_helper"

class JohnernsthausenPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::JohnernsthausenPalindrome::VERSION
  end

  def test_non_palindrome
    refute "Apple".palindrome?
  end

  def test_Case_Insensitive_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_palindrome_with_numbers
    refute 123.palindrome?
  end

  def test_palindrome_with_whitespace
    refute "    ".palindrome?
  end
end
