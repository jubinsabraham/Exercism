class PrimeFactors
  require 'prime'
  def self.for(num)
    prime_array = []
    prime_array = [] if num == 1
    num.prime_division.each do |i|
      i.last.times do
        prime_array << i.first
      end
    end
    prime_array
  end
end
    
