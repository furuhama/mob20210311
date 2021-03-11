# frozen_string_literal: true

class VendingMachine
  attr_accessor :sum_value

  def initialize
    self.sum_value = 0
  end

  def input(str)
    if %w[10 50 100 500 1000].include?(str)
      self.sum_value += str.to_i
      nil
    elsif str == '-1'
      sum_value.to_s
    else
      str
    end
  end
end
