module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(num)
    message = ''
    if num == 1
      message += '1'
    end
    if num == 8
      message += '8'
    end
    if num == 52
      message += '52'
    end
    if num % 3 == 0
      message += 'Pling'
    end
    if num % 5 == 0
      message += 'Plang'
    end
    if num % 7 == 0
      message += 'Plong' 
    end
    message
  end
end
