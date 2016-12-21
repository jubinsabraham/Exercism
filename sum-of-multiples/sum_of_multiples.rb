class SumOfMultiples
  def initialize(*num)
    @array = *num
  end

  def to(number)
    multiple_list = []
    @array.each do |j|
      n = 1
      number.times do
        multiple = n * j
        multiple_list.push(multiple) if multiple < number
        n += 1
      end
    end
    multiple_list.uniq.inject(&:+)
  end
end
