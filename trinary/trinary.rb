class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    c = 0
    sum = 0
    return 0 if @num =~ /[\D]/ || !@num.match(/[012]+/) 
    while c <= @num.length - 1
      @num.chars.reverse.each do |i|
        sum =  sum + i.to_i * 3 ** c
        c = c + 1
      end
    end
    sum
  end
end
    
