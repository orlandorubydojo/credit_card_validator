class CreditCardValidator

  # HINT:
  # create a method for each step involved in validating
  # a credit card number
  def is_card_number_valid?
    # 1)From right moving left double value of every second digit
    # 2)If the product of this doubling operation is greater than 9
    #   then sum the digits of the products
    # 3)Take the sum of all the digits
    # 4)If the number is a multiple of 10 then the number is valid.
    # This methods should return true/false
  end
end
