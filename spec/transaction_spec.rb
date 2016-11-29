require 'transactions'

  describe Transactions do
    subject(:transactions) { described_class.new}

    describe 'initialize' do
      it 'has no transactions at opening' do
        expect(subject.transactions).to be_empty
      end
    end

    describe 'add credit' do
      it 'will have a credit transaction and balance when credit added' do
        transactions.add("Credit", 1000)
        expect(subject.balance).to eq(1000)
      end

      describe 'add debit' do
      end
      it 'will have a debit transaction and reduced balance when debit added' do
        transactions.add("Credit", 1000)
        transactions.add("Debit", 500)
        expect(subject.balance).to eq(500)
      end
    end
  end
