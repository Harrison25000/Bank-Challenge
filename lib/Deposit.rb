require 'Bank.rb'

class Deposit
  attr_reader :bob

  def initialize(dollar)
    @bob = 0
    if dollar.is_a? Integer
      @bob += dollar
      return @bob
    else
      raise 'needs to be dollar'
    end
  end
end
