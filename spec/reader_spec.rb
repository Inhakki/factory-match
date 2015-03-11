require 'spec_helper'
require 'pry'
require_relative '../lib/reader'

### UNIT TESTS

describe Reader do
  it "can be instantiated" do
    reader = Reader.new
    expect(reader.class).to be(Reader)
  end

  describe "instantiated Reader with a stringIO file passed into it." do
    let( :mock_file ){ StringIO.new }
    let( :reader ){ Reader.new }

    describe "#return_co_occurrences" do
      it "should return the first number when method is called." do

      end
    end
  end
end
