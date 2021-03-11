# frozen_string_literal: true

class VendingMachine
  attr_accessor :sum_value
  attr_accessor :juices

  def initialize
    self.sum_value = 0
    self.juices = []
  end

  def input(str)
    if %w[10 50 100 500 1000].include?(str)
      self.sum_value += str.to_i
      nil
    elsif str == '-1'
      sum_str = sum_value.to_s
      self.sum_value = 0
      sum_str
    else
      str
    end
  end

  def input_juice(juice)
    self.juices << juice
  end
end

class Juice
  def initialize(name:, price:)
  end
end
