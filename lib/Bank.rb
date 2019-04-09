class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(dollar)
    if dollar.integer? == true
      @balance += dollar
    else
      return 'needs to be dollar'
    end
  end

  def withdraw(dollar)
    if dollar.integer? == true
      @balance -= dollar
    else
      return 'needs to be dollar'
    end
  end

end
