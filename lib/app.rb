class BankAccount

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    fail "Not enough credit" if amount > @balance
    @balance -= amount
  end

end
