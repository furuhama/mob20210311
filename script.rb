# frozen_string_literal: true

class Sample
  def self.perfect_answer
    42
  end
end

class Product
  def initialize(name, price)
    @name = name
    @price = price
  end
  def name
    @name
  end
  def price
    @price
  end
end

class BendingMachine
  AVAILABLE_MONEYS = [10, 50, 100, 500, 1000]
  def initialize
    @totalAmount = 0
    @product = Product.new("コーラ", 120)
    @num = 5
  end
  def input(money)
    if AVAILABLE_MONEYS.include?(money)
      @totalAmount += money
    end
  end
  def dispAmount
    return @totalAmount
  end
  def refund
    total = @totalAmount
    @totalAmount = 0
    return total
  end
  def stock
    return {"name" => @product.name, "price" => @product.price, "num" => @num}
  end
end
