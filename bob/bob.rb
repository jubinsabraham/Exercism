class Bob
  def self.hey(remark)
    if remark == remark.upcase && remark =~ /[a-zA-Z]/ 
      return 'Whoa, chill out!'
    elsif remark.end_with?('?')
      return 'Sure.'
    elsif remark.split(' ') == []
      return 'Fine. Be that way!'
    else
      return 'Whatever.'
    end
  end
end
      
