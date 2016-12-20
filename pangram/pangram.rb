class Pangram
  def self.pangram?(phrase)
    if phrase.empty?
      return FALSE
    end
    sentence = phrase.downcase.chars
    keys = ('a'..'z').to_a
    if (keys - sentence).empty?
      return TRUE
    else
      return FALSE
    end
  end
end
