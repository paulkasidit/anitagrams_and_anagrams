class Analyzer

  attr_reader(:string_1, :string_2) 
  
  def initialize(string_1,string_2) 
    @string_1 = string_1
    @string_2 = string_2
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

  def is_anagram #output value: boolean
  end

  def is_antigram #output value: boolean
  end 

  def format_string #helper function to help format string (removing punctuation, whitespaces, etc.)
  end 


end
