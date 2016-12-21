class RunLengthEncoding
  def self.encode(string)
    string.scan(/(.)(\1*)/).inject("") do |encoding, (char, repeat)|
      if repeat != ""
        encoding << (1 + repeat.length).to_s << char
      else
        encoding << char
      end
    end
  end

  def self.decode(string)
    string.scan(/(\d*)(\D)/).inject("") do |decoding, (length, char)|
      length = 1 if length == ''
      decoding << char * length.to_i
    end
  end
end
