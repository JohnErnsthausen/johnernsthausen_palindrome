require "johnernsthausen_palindrome/version"

module JohnernsthausenPalindrome
  # Return true for a palindrome, false otherwise
  def palindrome?
    !processed_content.empty? && processed_content == processed_content.reverse
  end

  private

  # Returns downcase processed content for palindrome testing
  def processed_content
    self.to_s.strip.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include JohnernsthausenPalindrome
end

class Integer
  include JohnernsthausenPalindrome
end
