require 'transactions'

  describe Transactions do
    subject(:transactions) { described_class.new}

    describe 'initialize' do
      it 'has no transactions at opening' do
        expect(subject.transactions).to be_empty
      end
    end

    context 'add credit transactions' do
      before do
        subject.add("Credit", 1000)
      end

      it 'adds a credit transaction to the balance' do
      expect(subject.transactions).to include(:dr_or_cr=>"Credit", :amount=>1000, :balance=>1000)
      end
    end

    context 'add debit transactions' do
      before do
        subject.add("Credit", 1000)
        subject.add("Debit", 500)
      end

      it ' adds a debit transaction to the balance' do
      expect(subject.transactions).to include(:dr_or_cr=>"Debit", :amount=>500, :balance=>500)
      end
    end

      it 'stops going overdrawn' do
      expect { subject.add("Debit", 500) }.to raise_error("Not enough credit")
      end
  end
