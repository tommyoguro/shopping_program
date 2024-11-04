require_relative "user"

class Seller < User
  include Ownable
  include ItemManager 
  
  def initialize(name)
    super(name) # superの役割について確認したい場合は[https://diver.diveintocode.jp/curriculums/2360]のテキストを参考にしてください。
  end

  class Seller
    include ItemManager
  
    def initialize
      @items = []  # アイテムを保持する配列
    end
  
    # ItemManagerモジュールのためのitemsメソッド
    def items
      @items
    end
  
    # アイテムを追加するメソッド
    def add_item(item)
      @items << item
    end
  end
  


end
