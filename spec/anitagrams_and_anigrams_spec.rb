require('rspec') 
require('anitagrams_and_anigrams') 

describe Analyzer do 
  #intialize
  describe('.intialize') do
    it("returns first & second phrase as all lower case") do
      first_analysis =  Analyzer.new("Lucy","Bob")
      expect(game1.string_1).to(eq('lucy')) #Lucy 
      # expect(game1.string_1).to(eq('bob')) #Bob
    end
    end
  
end