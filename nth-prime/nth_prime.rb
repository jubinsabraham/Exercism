class Prime
  def self.nth(num)
    raise ArgumentError if num < 1
    count  = 0
    number = 2
    until count == num
      count += 1 if prime_num(number)
      number += 1
    end
    number -=1
  end
  def self.prime_num(number)
    raise ArgumentError if number < 2
    prime = TRUE
    (2..number/2).each do |i|
      if number % i == 0
        prime = FALSE
        break
      end
    end
    prime
  end
end
