require "minitest/autorun"
require_relative "mathprogram.rb"  #You have to change this what is in quotes to the name of your rb files

class Testmath < Minitest::Test  #The word Addition can be replace with the name of your project

def test_assert_that_1_equals_1
    assert_equal(1,1)
end

def test_assert_that_1_plus_1_equals_2
    assert_equal(2,addition(1, 1))
end

def test_assert_that_2_plus_3_equals_5
    assert_equal(5, addition(2, 3))
end

def test_assert_that_10_minus_5_equals_5
	result = subtraction(10,5)
    assert_equal(5,result)
end

def test_assert_that_12_multiplied_by_12_equals_144
	result = multiplication(12,12)
    assert_equal(144, result)
end

def test_assert_that_12_divided_by_2_equals_6
	result = division(12,2)
    assert_equal(6, result)
end



end