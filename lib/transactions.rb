require_relative 'update_balance'
class Transactions

attr_reader :transactions, :amount, :dr_or_cr, :balance

  def initialize
    @update_balance = UpdateBalance.new
    @amount = amount
    @dr_or_cr = dr_or_cr
    @transactions = Hash.new
    @transaction_log = []
  end

  def add(dr_or_cr, amount)
    if dr_or_cr == "Credit"
      @update_balance.credit(amount)
      elsif dr_or_cr == "Debit"
      @update_balance.debit(amount)
      else
      fail "Please enter Debit or Credit"
    end
    @transactions = {date: Time.now, dr_or_cr: dr_or_cr, amount: amount, balance: @update_balance.balance}
    @transaction_log << @transactions
  end



end
