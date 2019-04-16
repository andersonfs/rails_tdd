require 'calculator'

RSpec.describe Calculator, 'Sobre a calculadora' do

  context "#div" do
    it 'raise_error with error class - divided by zero' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
    end

    it 'raise_error with error message - divided by zero' do
      expect{subject.div(3,0)}.to raise_error("divided by 0")
    end

    it 'raise_error with error class and message - divided by zero' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, "divided by 0")
    end

    it 'raise_error with regular expression - divided by zero' do
      expect{subject.div(3,0)}.to raise_error(/divided/)
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end
