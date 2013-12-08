require_relative '../../test_helper'
 
describe Multisearch do

    it "Should return something" do
      Tablename.multisearch("bingo",["col1", "col4"]).wont_be_empty
    end

    it "Should be a hash" do
      Tablename.multisearch("bingo",["col1", "col4"]).must_be_kind_of Hash
    end

    it "Should return a hash with empty value" do
      Tablename.multisearch("boink",["col2"])[0].must_be_nil
    end

    it "Should have records under col1" do
      Tablename.multisearch("bingo",["col1", "col2"])["col1"].wont_be_nil
    end

end

=begin
id=1 will return in every search for bingo, 
id=2 will never return
id=3 will return in searches for col1, col2 and col8
id=4 will return in searches for col4 and col5
id=5 will return in searches for col4
=end
