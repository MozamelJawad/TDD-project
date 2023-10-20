require_relative '../solver'

describe 'During testing "Solver" class' do
  before(:each) do
    @solver = Solver.new
  end

  # test for factorial method
  describe 'When testing "factorial" method' do
    it 'returns 1 for factorial of 0' do
      expect(@solver.factorial(0)).to eql(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(@solver.factorial(5)).to eql(120)
      expect(@solver.factorial(6)).to eql(720)
      expect(@solver.factorial(10)).to eql(3_628_800)
    end

    it 'raises an exception for negative integers' do
      expect { @solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end
  # test for reverse method
  describe 'When tesint "reverse" method ' do
    it 'returns the reversed word' do
      expect(@solver.reverse('hello')).to eql('olleh')
      expect(@solver.reverse('world')).to eql('dlrow')
      expect(@solver.reverse('ruby')).to eql('ybur')
    end
  end

  # test for fizzbuzz method
  describe 'When testing "fizzbuzz" method ' do
    it 'returns "fizz" when divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eql('fizz')
      expect(@solver.fizzbuzz(9)).to eql('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eql('buzz')
      expect(@solver.fizzbuzz(20)).to eql('buzz')
    end

    it 'returns "fizzbuzz" when divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
      expect(@solver.fizzbuzz(30)).to eql('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(@solver.fizzbuzz(11)).to eql('11')
      expect(@solver.fizzbuzz(13)).to eql('13')
    end
  end
end
