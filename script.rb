# frozen_string_literal: true

class Sample
  def self.perfect_answer
    42
  end
end

class BendingMachine
  def initialize
    @totalAmount = 0
  end
  def input(money)
    if [10, 50, 100, 500, 1000].include?(money)
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
end
