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
      expect(subject.transactions).to include("Credit", (sprintf "%.2f", 1000),  (sprintf "%.2f", 1000))
      end
    end

    context 'add debit transactions' do
      before do
        subject.add("Credit", 1000)
        subject.add("Debit", 500)
      end

        it ' adds a debit transaction to the balance' do
          expect(subject.transactions).to include("Debit", (sprintf "%.2f", 500), (sprintf "%.2f", 500))
        end
    end

      it 'stops going overdrawn' do
      expect { subject.add("Debit", 500) }.to raise_error("Not enough credit")
      end

      context 'add debit transactions' do
        before do
          subject.add("Credit", 1000)
          subject.add("Debit", 500)
        end
      it 'prints out transactions' do
          expect(subject.print_tr(@transaction_log)).to eq [["29/11/2016", "Debit", (sprintf "%.2f", 500), (sprintf "%.2f", 500.00)], ["29/11/2016", "Credit", (sprintf "%.2f", 1000), (sprintf "%.2f", 1000.00)]]
        end
      end

  end
