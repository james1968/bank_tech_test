require 'transactions'

  describe Transactions do
    subject(:transactions) { described_class.new}

    describe 'initialize' do
      it 'has no transactions at opening' do
        expect(subject.transactions).to be_empty
      end
    end
  end
