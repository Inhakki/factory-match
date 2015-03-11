##############################################################################
# READER SPEC FILE BY INHAK
#
# WARNING: RUN THIS ONLY FROM INSIDE THE MAKERS FOLDER.                      #
#
# This is the test file for the "reader". Some things to take into account.  #
# MAKE SURE to be in the makers folder before running the spec. The spec will
# change into your present working directory to make test files and directories.
# This can potentially cause problems if executed in the wrong place.
##############################################################################

# READER is the file we are testing. WE WILL COME BACK TO THIS LATER
describe "Reader" do

  describe "Test basic behaviors of the Reader class through CLI" do

    ###WARNING: RUN THIS ONLY INSIDE THE MAKERS FOLDER###
    #
    ## This creates test files in the spec/test folder.
    before(:each) do
      pwd = `pwd`
      @dirs = [pwd.chomp]
    end
    it "should make sure it is in the right directory first." do
      check_directory_presence(["lib", "spec"], true)
    end
    it "should take the first n integer as the number." do
      assert_exact_output("0", run_simple("ruby lib/main.rb < spec/test1.txt"))
      #expect(run_simple "ruby lib/reader.rb < spec/text1.txt").to eq('4')
    end
    it "should take the example input and output the example output." do

    end
  end
end
