require_relative "ownable"

class Item
  include Ownable
  attr_reader :number, :name, :price

  @@instances = []

  def initialize(number, name, price, owner=nil)
    @number = number
    @name = name
    @price = price
    @owner = owner

    # Itemインスタンスの生成時、そのItemインスタンス(self)は、@@insntancesというクラス変数に格納されます。
    @@instances << self
  end

  def to_h
    { name: @name, price: @price}
  end 

  def label
    { number: number, name: name, price: price }
  end

  def self.instances
        #　@@instancesを返します ==> Item.allでこれまでに生成されたItemインスタンスを全て返すということです。
    @@instances
  end

end