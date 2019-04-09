class Account
  def initialize
    @balance = 0
  end

  def deposit(dollar)
    if dollar.integer? == true
      @balance += dollar
    else
      return 'needs to be dollar'
    end
    return @balance
  end

end
