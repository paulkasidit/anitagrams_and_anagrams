require('rspec') 
require('antigrams_or_anagrams') 

describe Analyzer do 

    describe('.intialize') do
      it("returns first word as string") do  
        first_analysis =  Analyzer.new("Lucy","Bob")
        expect(first_analysis.string_1.class).to(eq(String))
      end
    end
    describe('.intialize') do
      it("returns first sentence as string") do 
        first_analysis =  Analyzer.new("Lucy is cool","Bob")
        expect(first_analysis.string_1.class).to(eq(String))
      end
    end
    describe('.intialize') do
      it("returns first sentence as lowercase string") do 
        first_analysis =  Analyzer.new("Lucy is cool","Bob")
        expect(first_analysis.string_1).to(eq('lucy is cool'))
      end
    end
  

  describe('.is_word') do 
    it ("returns boolean if input contains a vowel") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_word('Cat')).to(eq(true))
    end
  end
  describe('.is_word') do 
    it ("returns boolean if input contains a vowel") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_word('xxz')).to(eq(false))
    end
  end


  describe('.format_string') do 
    it ("returns string input (word) as a sorted array of individual letters") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.format_string('cat')).to(eq(["a","c","t"]))
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


  describe('.is_anagram') do 
    it ("returns true if arrays DO match") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_anagram(['d','g','o'],['d','g','o'])).to(eq(true))
    end
  end
  describe('.is_anagram') do 
    it ("returns false if arrays DO NOT match") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_anagram(['d','g','o'],['a','c','t'])).to(eq(false))
    end
  end

  describe('.is_antigram') do 
    it ("returns false if the two arrays have ATLEAST one matching letter") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_antigram(['x','y','z'],['a','b','c'])).to(eq(true))
    end
  end 
  describe('.is_antigram') do 
    it ("returns true if the two arrays have ZERO matching letters") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_antigram(['h','i'],['b','e','y'])).to(eq(true))
    end
  end
  describe('.is_antigram') do 
    it ("returns false if the two arrays have AT LEAST one matching letter") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_antigram(['a','e','r'],['a','e','r'])).to(eq(false))
    end
  end
  describe('.is_antigram') do 
    it ("returns false if the two arrays have AT LEAST one matching letter") do 
      first_analysis =  Analyzer.new("Cat","Dog") 
      expect(first_analysis.is_antigram(['a','c','t'],['a','h','t'])).to(eq(false))
    end
  end

end