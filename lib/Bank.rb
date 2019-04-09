class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(dollar)
    if dollar.is_a? Integer
      @balance += dollar
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
    else
      raise 'needs to be dollar'
    end
  end

end
