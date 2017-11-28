require 'minitest/autorun'
require './lib/roman_numerals'

# Common test data version: 1.0.0 070e8d5
class RomanNumeralsTest < Minitest::Test
  def test_1
    roman = RomanNumerals.new
    assert_equal 'I', roman.to_roman(1)
  end

  def test_2
    roman = RomanNumerals.new
    assert_equal 'II', roman.to_roman(2)
  end

  def test_3
    roman = RomanNumerals.new
    assert_equal 'III', roman.to_roman(3)
  end

  def test_4
    roman = RomanNumerals.new
    assert_equal 'IV', roman.to_roman(4)
  end

  def test_5
    roman = RomanNumerals.new
    assert_equal 'V', roman.to_roman(5)
  end

  def test_6
    roman = RomanNumerals.new
    assert_equal 'VI', roman.to_roman(6)
  end

  def test_9
    roman = RomanNumerals.new
    assert_equal 'IX', roman.to_roman(9)
  end

  def test_27
    roman = RomanNumerals.new
    assert_equal 'XXVII', roman.to_roman(27)
  end

  def test_48
    roman = RomanNumerals.new
    assert_equal 'XLVIII', roman.to_roman(48)
  end

  def test_59
    roman = RomanNumerals.new
    assert_equal 'LIX', roman.to_roman(59)
  end


  def test_93
    roman = RomanNumerals.new
    assert_equal 'XCIII', roman.to_roman(93)
  end

  def test_141
    roman = RomanNumerals.new
    assert_equal 'CXLI', roman.to_roman(141)
  end

  def test_163
    roman = RomanNumerals.new
    assert_equal 'CLXIII', roman.to_roman(163)
  end

  def test_402
    roman = RomanNumerals.new
    assert_equal 'CDII', roman.to_roman(402)
  end

  def test_575
    roman = RomanNumerals.new
    assert_equal 'DLXXV', roman.to_roman(575)
  end

  def test_911
    roman = RomanNumerals.new
    assert_equal 'CMXI', roman.to_roman(911)
  end

  def test_1024
    roman = RomanNumerals.new
    assert_equal 'MXXIV', roman.to_roman(1024)
  end

  def test_3000
    roman = RomanNumerals.new
    assert_equal 'MMM', roman.to_roman(3000)
  end
end
