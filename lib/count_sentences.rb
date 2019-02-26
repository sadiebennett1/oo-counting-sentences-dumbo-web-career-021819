require 'pry'

class String

  def sentence?
    if self.end_with(".")
      return true 
    end
    false 
  end

  def question?
   if self.end_with("?")
      return true 
    end
    false 
  end

  def exclamation?
   if self.end_with("!")
      return true 
    end
    false 
  end

  def count_sentences
    arr = self.split("!", ".", "?")
    new_arr
    arr.each do |sent|
      if sent != ""
        new_arr << sent
      end
    end
    return new_arr.length 
  end
end