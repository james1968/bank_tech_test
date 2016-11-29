# bank_tech_test

##Requirements

You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

####date       || credit || debit   || balance
####14/01/2012 ||        || 500.00  || 2500.00
####13/01/2012 || 2000.00||         || 3000.00
####10/01/2012 || 1000.00||         || 1000.00

Instructions

1) Go to the following repo on Github: https://github.com/james1968/bank_tech_test

2) Fork and clone or clone the repo directly to your local machine.

3) Run bundle install to ensure all gems dependencies  are installed.

4) Run rspec to see test coverage.

5) To test in IRB or Pry, launch Irb or Pry.  Do the following:

####require './lib/transaction.rb.
####transaction = Transaction.new
####transaction.add("Credit", 1000)
####transaction.add("Debit", 500)
####transaction.print_tr(@transaction_log)
