class PhoneNumber

  def initialize(num)
    @num = num
  end
  INVALID = "0" * 10.freeze

  def number
    return INVALID unless valid
    return stripped if valid_10_digits
    stripped[1..-1] if valid_11_digits
  end
  
  def area_code
    number[0..2]
  end
  
  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  def valid
    no_letters && valid_10_digits || valid_11_digits
  end

  def no_letters
    !@num.match(/[a-zA-z]/)
  end
  
  def valid_11_digits
    stripped.size == 11 && stripped.chars.first == '1' 
  end

  def valid_10_digits
    stripped.size == 10
  end

  def stripped
    @num.gsub(/[\D]/,'')
  end    
end
