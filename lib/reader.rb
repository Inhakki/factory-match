require 'pry'

class Reader

  def initialize(*args)
    ### Args is used to help test the methods. For a normal file,
    # you can still pipe it in through main.rb.
    # the args are put into the variable as an array.
    if args.empty?
      @input = $stdin
    elsif args[0].is_a?(Array)
      @input = args[0]
      puts "You put multiple arguments into the Reader. Taking only the first..."
    else
      @input = args
    end
  end

  def return_co_occurrence_number
    @num = @input.first.to_i
    return @num
  end
end
