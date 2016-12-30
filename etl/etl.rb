class ETL
  
  def self.transform(old)
    hash = {}
    old.each do |key,value|
      value.each do  |letters|
        hash[letters.downcase] = key
      end
    end
    hash
  end
end
