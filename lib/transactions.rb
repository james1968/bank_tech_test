require_relative 'update_balance'
class Transactions

attr_reader :transactions, :balance

  def initialize
    @update_balance = UpdateBalance.new
    # @amount = amount
    # @dr_or_cr = dr_or_cr
    @transactions = []
    @transaction_log = []
  end

  def add(dr_or_cr, amount)
    date = Date.today.strftime("%d/%m/%Y")
    if dr_or_cr == "Credit"
      @update_balance.credit(amount)
      elsif dr_or_cr == "Debit"
      @update_balance.debit(amount)
      else
      fail "Please enter Debit or Credit"
    end
    @transactions = [date, dr_or_cr, amount, @update_balance.balance]
    @transaction_log << @transactions
  end

  def print_tr(transaction_log)
    puts "date       || credit || debit || balance\n"
    @transaction_log.reverse.each do |tr|
      puts tr.join(" || ")
    end
  end

end
