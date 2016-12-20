module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    i = 0
    dna_list = ''
    while i < dna.length
      if dna[i] == 'C'
        dna_list += 'G'
      elsif dna[i] == 'G'
        dna_list += 'C'
      elsif dna[i] == 'T'
        dna_list += 'A'
      elsif dna[i] == 'A'
        dna_list += 'U'
      elsif dna[i] == 'U'
        dna_list += ''
      else
        dna_list = ''
        break
      end
      i = i + 1
    end
    dna_list
  end
end
