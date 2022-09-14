require('rspec')  
require('lib/') 

puts "\n"
puts "Hey there, please enter two words for antigram/anagram analysis on the prompt"
puts "\n"
puts "\n"
puts "Enter first word/sentence" 
first_string = gets.chomp
puts "\n"
puts "Enter second word/sentence" 
second_string = gets.chomp
puts "\n"

first_analysis = Analyzer.new(first_string,second_string) 
first_analysis.anagram_or_antigram() 