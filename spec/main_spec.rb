##############################################################################
# READER SPEC FILE BY INHAK
#
# WARNING: RUN THIS ONLY FROM INSIDE THE MAKERS FOLDER.
# Aruba makes files and deletes them but just to be safe, don't run rspec outside
# of the given makers folder.                     #
#
# This is the test file for the "reader". Some things to take into account.  #
# MAKE SURE to be in the makers folder before running the spec. The spec will
# change into your present working directory to make test files and directories.
# This can potentially cause problems if executed in the wrong place.
##############################################################################

#### MAIN.rb is the file we are testing.
# This spec is mostly for acceptance testing of the actual files.

describe "Main" do
  describe "These set of tests" do

    ###WARNING: RUN THIS ONLY INSIDE THE MAKERS FOLDER###
    #
    ## This creates test files in the spec/test folder.
    before(:each) do
      pwd = `pwd`
      @dirs = [pwd.chomp]
    end

    ###Does a check to see if you're in a folder with both lib and spec in it.
    ### Useful for checking to see if
    it "should make sure it is in the right directory first." do
      check_directory_presence(["lib", "spec"], true)
    end


    it "should take the first n integer as the number." do
      assert_exact_output("0", run_simple("ruby lib/main.rb < spec/test1.txt"))
    end
    it "should take the example input and output the example output." do

    end
  end
end
