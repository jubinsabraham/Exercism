class Phrase
  def initialize(word)
    @word = word
  end
  def word_count
    word_without_special = @word.gsub(/[:;,.!&@$%^&]+| '|' /, ' ')
    words = word_without_special.split(/[\s]+/)
    frequency = Hash.new(0)
    words.each { |i| frequency[i.downcase] += 1 }
    return frequency
  end
end
    
