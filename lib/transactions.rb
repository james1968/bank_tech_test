require_relative 'balance'
class Transactions

attr_reader :transactions, :amount, :dr_or_cr, :balance

  def initialize(balance = 0)
    @balance = balance
    @amount = amount
    @dr_or_cr = dr_or_cr
    @transactions = Hash.new
    @transaction_log = []
  end

  def add(dr_or_cr, amount, balance)
    if dr_or_cr == "Credit"
      @balance += amount
    elsif dr_or_cr == "Debit"
      @balance -= amount
    else
      fail "Please enter Debit or Credit"
    end
    @transactions = {date: Time.now, dr_or_cr: dr_or_cr, amount: amount, balance: @balance}
    @transaction_log << @transactions
  end

end
