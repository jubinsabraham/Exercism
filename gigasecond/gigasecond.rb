module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(old_date)
    new_date = old_date + 10**9
  end
end
