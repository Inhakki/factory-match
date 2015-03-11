require 'spec_helper'
require 'pry'
require_relative '../lib/reader'

### UNIT TESTS
describe Reader do
  it "can be instantiated" do
    reader = Reader.new
    expect(reader.class).to be(Reader)
  end

  describe "instantiated Reader with a STRING to test the methods passed into it." do
    let( :reader ){ Reader.new("
        4\n
        foo,bar,baz,foo,bar\n
        bar,baz,bar,baz\n
        foo,bar,baz,bar\n
    ")}

    describe "#return_co_occurrences" do
      it "should return the first number when method is called." do
        expect(reader.return_co_occurrence_number).to eq(4)
      end
    end
  end
end
