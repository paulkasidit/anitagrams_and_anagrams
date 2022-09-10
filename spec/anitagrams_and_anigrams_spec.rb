require('rspec') 
require('anitagrams_and_anagrams') 

describe Analyzer do 
    #intialize
    describe('.intialize') do
      it("returns first word as string") do #Luxy 
        first_analysis =  Analyzer.new("Lucy","Bob")
        expect(first_analysis.string_1.class).to(eq(String))
      end
    end
    describe('.intialize') do
      it("returns first sentence as string") do #Luxy 
        first_analysis =  Analyzer.new("Lucy is cool","Bob")
        expect(first_analysis.string_1.class).to(eq(String))
      end
    end
    describe('.intialize') do
      it("returns first sentence as lowercase string") do #Luxy 
        first_analysis =  Analyzer.new("Lucy is cool","Bob")
        expect(first_analysis.string_1).to(eq('lucy is cool'))
      end
    end
  
  #is_anagram 
  describe('.is_anagram') do 
    it ("returns boolean if arrays match") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_anagram(['d','g','o'],['d','g','o'])).to(eq(true))#God, Dog 
    end
  end
  
  #format_string - helper function to help format string (removing punctuation, whitespaces, etc.)
  describe('.format_string') do 
    it ("returns string input (word) as a sorted array of individual letters") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.format_string('cat')).to(eq(["a","c","t"]))#Cat
    end
  end
  describe('.format_string') do 
    it ("returns string input (sentence) as a sorted array of individual letters with spaces removed") do 
      first_analysis =  Analyzer.new("Cats are cool","Dog") 
      expect(first_analysis.format_string('hello me')).to(eq(["e", "e", "h", "l", "l", "m", "o"]))
    end
  end
  describe('.format_string') do 
    it ("returns string input (sentence) as a sorted array of individual letters with spaces removed") do 
      first_analysis =  Analyzer.new("Cats are cool","Dog") 
      expect(first_analysis.format_string('hello me!')).to(eq(["e", "e", "h", "l", "l", "m", "o"]))
    end
  end

  #is_word - helper function to check if input is an actual word 
  describe('.is_word') do 
    it ("returns boolean if input contains a vowel") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_word('Cat')).to(eq(true))#Cat
    end
  end
  describe('.is_word') do 
    it ("returns boolean if input contains a vowel") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_word('xxyz')).to(eq(false))#Cat
    end
  end

end