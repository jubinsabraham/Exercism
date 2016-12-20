module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1,strand2)
    raise ArgumentError unless strand1.length == strand2.length
    count = 0
    if strand1.eql?strand2
      return count
    else
       (0..strand1.length).each do |i|
        if strand1[i] != strand2[i]
          count = count + 1
        end
      end
      return count 
    end
end
end
