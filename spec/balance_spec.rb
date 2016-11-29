require 'update_balance'

describe UpdateBalance do
  subject(:update_balance) { described_class.new}

  describe 'initialize' do
    it 'has a default balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe 'credit an account' do
    it 'will have a balance plus the credit amount' do
      update_balance.credit(1000)
        expect(subject.balance).to eq(1000)
      end
  end

  describe 'debit an account' do
    before do
      update_balance.credit(1000)
    end
    it 'will have a balance minus the credit amount' do
      update_balance.debit(500)
        expect(subject.balance).to eq(500)
      end
  end

  describe 'can\'t debit more than the balance' do
    it 'will not allow a debit if amount is greater than the balance' do
        expect{ subject.debit(500) }.to raise_error "Not enough credit"
      end
  end

end
