require 'pry'

class RomanNumerals

  def to_roman(integer)
    num_str = ""
    if integer >= 1000
      num_str << digit(integer, 3, ["M", "|ↃↃ", "CC|ↃↃ"])
    end
    if integer >= 100
      num_str << digit(integer, 2, ["C", "D", "M"])
    end
    if integer >= 10
      num_str << digit(integer, 1, ["X", "L", "C"])
    end
    num_str << digit(integer, 0, ["I", "V", "X"])
  end


  def digit(integer, pow_10, symbols)
    rom_str = ''
    int_str = integer.to_s
    one_dig_str = int_str[int_str.length - (pow_10 + 1)]
    position = one_dig_str.to_i
    if position < 5
      if position < 4
        rom_str << letters(position, symbols[0])
      else
        rom_str << symbols[0]
        rom_str << symbols[1]
      end
    else
      rom_str = symbols[1]
      if position < 9
        rom_str << letters((position - 5), symbols[0])
      else
        rom_str = symbols[0]
        rom_str << symbols[2]
      end
    end
    rom_str
  end

  def letters(number, symbol)
    rom_str = ''
    number.times do
      rom_str << symbol
    end
    rom_str
  end
end

#
#   def ones(integer)
#     rom_str = ""
#     int_str = integer.to_s
#     one_str = int_str[int_str.length - 1]
#     ones = one_str.to_i
#     if ones < 5
#       if ones < 4
#         rom_str << eyes(ones)
#       else
#         rom_str = "IV"
#       end
#     else
#       rom_str = "V"
#       if ones < 9
#         rom_str << eyes(ones - 5)
#       else
#         rom_str = "IX"
#       end
#     end
#     rom_str
#   end
#
#   def tens(integer)
#     rom_str = ""
#     int_str = integer.to_s
#     ten_str = int_str[int_str.length - 2]
#     tens = ten_str.to_i
#     if tens < 5
#       if tens < 4
#         rom_str << exes(tens)
#       else
#         rom_str = "XL"
#       end
#     else
#       rom_str = "L"
#       if tens < 9
#         rom_str << exes(tens - 5)
#       else
#         rom_str = "XC"
#       end
#     end
#     rom_str
#   end
#
#   def hundreds(integer)
#     rom_str = ""
#     int_str = integer.to_s
#     hun_str = int_str[int_str.length - 3]
#     hunds = hun_str.to_i
#     if hunds < 5
#       if hunds < 4
#         rom_str << cees(hunds)
#       else
#         rom_str = "CD"
#       end
#     else
#       rom_str = "D"
#       if hunds < 9
#         rom_str << cees(hunds - 5)
#       else
#         rom_str = "CM"
#       end
#     end
#     rom_str
#   end
#
#   def thousands(integer)
#     rom_str = ""
#     int_str = integer.to_s
#     tho_str = int_str[int_str.length - 4]
#     thous = tho_str.to_i
#     if thous < 5
#       if thous < 4
#         rom_str << emms(thous)
#       else
#         rom_str = "M|Ↄ"
#       end
#     else
#       rom_str = "|Ↄ"
#       if thous < 9
#         rom_str << emms(thous - 5)
#       else
#         rom_str = "CC|ↃↃ"
#       end
#     end
#     rom_str
#   end
#
#
#
#
#   def eyes(number)
#     rom_str = ''
#     number.times do
#       rom_str << "I"
#     end
#     rom_str
#   end
#
#
#   def exes(number)
#     rom_str = ''
#     number.times do
#       rom_str << "X"
#     end
#     rom_str
#   end
#
#   def cees(number)
#     rom_str = ''
#     number.times do
#       rom_str << "C"
#     end
#     rom_str
#   end
#
#   def emms(number)
#     rom_str = ''
#     number.times do
#       rom_str << "M"
#     end
#     rom_str
#   end
#
