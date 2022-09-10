class Analyzer

  attr_reader(:string_1, :string_2) 
  
  def initialize(string_1,string_2) 
    @string_1 = string_1.downcase()
    @string_2 = string_2.downcase()
  end

  # def anitagram_or_anigram() #intiialzie is_anigram & is_antigram  as callback functions  
  #   formatted_string_1 = format_string(string_1) 
  #   formatted_string_2 = format_string(string_2) 
  #   if is_anigram(formatted_string_1,formatted_string_2) == true 
  #     puts "the two inputs are anigrams, ALL letters match" 
  #   elsif is_anitgram(formatted_string_1,formatted_string_2) == true  
  #     puts "the two inputs are anitgrams, ZERO letters match"
  #   else 
  #     puts "these two inputs are NEITHER anigrams or antigrams of one another"
  #   end
  # end

  def is_anagram(formatted_array_1, formatted_array_2) #output value: boolean
    if formatted_array_1 == formatted_array_2
      return true 
    else
      return false 
  end
  # end 

  def format_string(string_object)

    processing_array = []
    string_object.each_char {|letter| 
      processing_array.push(letter)
    }

    formatted_array = processing_array.sort() - [" ", "!", "?", ".", nil]

  end 

  def is_word(formatted_array) 

    vowels = ['a','e','i','o','u']

    for vowel in vowels 
      if formatted_array_object.include?(vowel) 
        return true 
      else 
        puts "Enter a valid input!"
        return false
      end
    end

  end






end


