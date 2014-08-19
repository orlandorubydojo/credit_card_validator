Credit Card Validator
=====================

We will be working on a credit card validator.  Most finiancial systems have away to check
if the credit card you provided is a valid credit card.  We will create an application that
will take the type of credit card along with the credit card number and validate it. To validate
the credit card number we will use the Luhn algorithm. To validate the type we will follow the
chart below.

Here are the steps for the Luhn algorithm (from wikipedia [Luhn Algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm))

1) From the rightmost digit moving left, double the value of every second digit

2)If the product of this doubling operation is greater than 9 (e.g., 7 × 2 = 14),
then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).

3)Take the sum of all the digits.

4)If the number is a multiple of 10 then the number is valid.

To test for the card type the credit card must begin with the correct number and have a required length.

```

+============+=============+===============+
| Card Type  | Begins With | Number Length |
+============+=============+===============+
| AMEX       | 34 or 37    | 15            |
+------------+-------------+---------------+
| Discover   | 6011        | 16            |
+------------+-------------+---------------+
| MasterCard | 51-55       | 16            |
+------------+-------------+---------------+
| Visa       | 4           | 13 or 16      |
+------------+-------------+---------------+

```

Usage
======

```ruby
  # With correct credit card number and credit card type
  card_validator = CreditCardValidator.new('4408041234567893', 'Visa')
  card_validator.is_card_number_valid? #=> true
  card_validator.is_card_type_valid? #=> true

  # With correct credit card number and wrong credit card type
  card_validator = CreditCardValidator.new('4408041234567893', 'AMEX')
  card_validator.is_card_number_valid? #=> true
  card_validator.is_card_type_valid? #=> false

  # With wrong credit card number and wrong credit card type
  card_validator = CreditCardValidator.new('35678900000234', 'AMEX')
  card_validator.is_card_type_valid? #=> false
  card_validator.is_card_number_valid_valid? #=> false
```

Bonus
====
Write a method that will output valid or not valid message depending
on whether the credit card type and number is valid.

```ruby
  card_validator = CreditCardValidator.new('4408041234567893', 'Visa')
  card_validator.validate # => "VALID: Visa ending in 7893"

  card_validator = CreditCardValidator.new('4408041234567893', 'AMEX')
  card_validator.validate # => "NOT VALID: Credit Card Type mismatch"

  card_validator = CreditCardValidator.new('35678900000234', 'AMEX')
  card_validator.validate # => "NOT VALID: Credit Card Type and Number mismatch"
```

