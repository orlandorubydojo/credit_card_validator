require 'byebug'
class CreditCardValidator

  attr_reader :ccnumber
  attr_reader :cctype

  def initialize(number, type)
    @ccnumber = number
    @cctype = type
  end

  # HINT:
  # create a method for each step involved in validating
  # a credit card number
  def is_card_number_valid?
    # 1)From right moving left double value of every second
    #   digit
    # 2)If the product of this doubling operation is greater than 9
    #   then sum the digits of the products
    # 3)Take the sum of all the digits
    # 4)If the number is a multiple of 10 then the number is valid.
    # This methods should return true/false

  end

  def reverse_number
    @ccnumber.reverse
  end

  #stopped here.
  def sum_double
    reversed = reverse_number

    (0..reversed.length-1).step(2) do |index|
      temp_val = reversed[index].to_i * 2
      # byebug
      if temp_val > 9
        temp_val = (temp_val/10) + (temp_val % 10)
        reversed[index] = (temp_val[0].to_i + temp_val[1].to_i).to_s
      end
    end
  reversed
  end

end
