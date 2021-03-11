# frozen_string_literal: true

class VendingMachine
  attr_accessor :sum_value

  def initialize
    self.sum_value = 0
  end

  def input(str)
    self.sum_value += str.to_i
    nil
  end
end
