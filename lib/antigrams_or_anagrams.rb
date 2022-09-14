class Analyzer

  attr_reader(:string_1, :string_2) 
  
  def initialize(string_1,string_2) 
    @string_1 = string_1.downcase()
    @string_2 = string_2.downcase()
  end

  def anagram_or_antigram() 
    if is_word(string_1) == true  && is_word(string_2) == true 
      formatted_string_1 = format_string(string_1) 
      formatted_string_2 = format_string(string_2) 
      if is_anagram(formatted_string_1,formatted_string_2) == true 
        puts "\n"
        puts "#{string_1} & #{string_2} are anagrams, ALL letters match." 
        puts "\n"
      elsif is_antigram(formatted_string_1,formatted_string_2) == true 
        puts "\n" 
        puts "#{string_1} & #{string_2} are antigrams, ZERO letters match."
        puts "\n"
      else
        puts "\n" 
        puts "#{string_1} & #{string_2} are NEITHER anagrams or antigrams."
        puts "\n"
      end
    else 
      puts "Please enter words!"
    end
  end

  def is_anagram(formatted_array_1, formatted_array_2) 
    if formatted_array_1 == formatted_array_2
      return true 
    else
      return false 
    end
  end

  def is_antigram(formatted_array_1, formatted_array_2) 
    intersecting_letters = [] 
    for i in formatted_array_1 
      for j in formatted_array_2
        if i == j 
          intersecting_letters.push(i) 
        end
      end
    end
    if intersecting_letters.empty? 
      return true
    else
      return false
    end
  end

  def format_string(string_object)
    processing_array = []
    string_object.each_char {|letter| 
      processing_array.push(letter)}
    formatted_array = processing_array.sort() - [" ", "!", "?", ".",",", nil]
  end 


  def is_word(string_object) 
    if string_object.include?('a') || string_object.include?('e') || string_object.include?('i') || string_object.include?('o') || string_object.include?('u') || string_object.include?('y') 
      return true 
    else
      return false
    end
  end



end

