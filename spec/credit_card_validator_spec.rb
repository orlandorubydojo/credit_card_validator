require './lib/credit_card_validator'

describe CreditCardValidator do
  context '#initialize' do
    it 'should create a validator' do
      # Let us start with the initialize method
      validator = CreditCardValidator.new("4444444444444444", "Visa")

      expect(validator.ccnumber).to eq "4444444444444444"
      expect(validator.cctype).to eq "Visa"
    end
  end

  context "#is_card_number_valid?" do
    let(:validator) {CreditCardValidator.new("489", "Visa")}

    it 'should reverse the cc number' do
      expect(validator.reverse_number).to eq("984")
    end

    it 'should right to left double' do
      expect(validator.sum_double).to eq("9164")
    end
  end
end
