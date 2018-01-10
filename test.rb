require "minitest/autorun"
require_relative "program_to_test.rb"  #You have to change this what is in quotes to the name of your rb files

class TestAddition < Minitest::Test  #The word Addition can be replace with the name of your project

def test_assert_that_1_equals_1
    assert_equal(1,1)
end

end