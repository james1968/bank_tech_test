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
      account.deposit(1000)
        expect(account.balance).to eq(1000)
      end
  end
end
