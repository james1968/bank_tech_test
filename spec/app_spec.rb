require 'app'

describe BankAccount do
  subject(:account) { described_class.new}

  describe 'initialize' do
    it 'has a default balance of zero' do
      expect(account.balance).to eq(0)
    end
  end

  describe 'credit an account' do
    it 'will have a balance plus the credit amount' do
      account.credit(1000)
        expect(account.balance).to eq(1000)
      end
  end

  describe 'debit an account' do
    before do
      account.credit(1000)
    end
    it 'will have a balance minus the credit amount' do
      account.debit(500)
        expect(account.balance).to eq(500)
      end
  end

  describe 'can\'t debit more than the balance' do
    it 'will not allow a debit if amount is greater than the balance' do
        expect{ account.debit(500) }.to raise_error "Not enough credit"
      end
  end

end
