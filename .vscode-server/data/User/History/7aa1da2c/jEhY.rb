class Wallet
  include ownable
  
  attr_reader :balance, : owner

  def initialize(owner)
    @owner = owner
    @balance = 0
  end

  def deposit(amount)
    @balance += amount.to_i
  end

  def withdraw(amount)
    return nil unless @balance >= amount
    @balance -= amount.to_i
    amount
  end

end