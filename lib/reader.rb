require 'pry'

class Reader
  attr_accessor :input

  def initialize
    @input = $stdin
  end

  def return_co_occurrence
    num = @input.first.to_i
    puts num
  end

end
