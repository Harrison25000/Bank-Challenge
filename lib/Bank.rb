require 'Deposit.rb'
require 'Statement.rb'
require 'Withdraw.rb'
class Account
  attr_reader :balance, :time_array
  def initialize
    @balance = 0
    @time_array = []
  end

  def deposit(dollar)
    if dollar.is_a? Integer
      @balance += dollar
      time =  "#{Time.new.year} : #{Time.new.month} : #{Time.new.day}"
      @time_array.push([time, 'deposit', dollar, 'balance', @balance])
    else
      raise 'needs to be dollar'
    end
  end

  def withdraw(dollar)

    if dollar.is_a? String
      raise 'needs to be dollar'
    end

    if dollar.integer? && dollar > @balance
      raise 'not enough money'
    elsif dollar.integer?
      @balance -= dollar
      time =  "#{Time.new.year} : #{Time.new.month} : #{Time.new.day}"
      @time_array.push([time, 'withdraw', dollar, 'balance', @balance])

    else
      raise 'needs to be dollar'
    end

  end

  def statement
     statement = []
     @time_array.each do |x|
        statement.push(x.join(' - '))
     end
     return statement.join(' || ')
  end

end
