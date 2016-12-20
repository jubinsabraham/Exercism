class Sieve
  def initialize(num_range)
    @num_range = num_range
  end

  def primes
    primes = ( 2..@num_range).to_a
    primes.each do |i|
      n = 2
      @num_range.times do
      primes.delete(n * i)
      n = n + 1
      end
    end
    primes
  end
end      
            
