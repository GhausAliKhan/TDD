require './solver'

RSpec.describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe 'Factorial' do
    it 'Should pass the tests' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(7)).to eq(5040)
      expect { @solver.factorial(-1) }.to raise_error(Exception, 'Cant be factorial by negative numbers!')
    end
  end

  describe 'Reverse' do
    it 'Should reverse the word' do
      expect(@solver.reverse('Hello!')).to eq('!olleH')
      expect(@solver.reverse('Hello123')).to eq('321olleH')
    end
  end
end
