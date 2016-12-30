class Year
  def self.leap?(leap_year)
     leap_year % 4 == 0 && leap_year % 100 != 0 || leap_year % 400 == 0
  end
end
    
