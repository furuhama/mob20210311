# frozen_string_literal: true

require_relative 'script'

RSpec.describe do
  # describe 'Sample' do
  #  it { expect(Sample.perfect_answer).to eq 42 }
  # end
  # 硬貨の種類？
  describe 'お金の投入' do
    describe '想定内のお金' do
      it '投入金額がhogehogeになる' do
        machine = BendingMachine.new
        machine.input(500)
        expect(machine.dispAmount).to eq 500
      end
    end
    describe '想定外のお金' do
      it '投入金額が変わらない' do
        machine = BendingMachine.new
        machine.input(1)
        expect(machine.dispAmount).to eq 0
      end
    end
    describe '想定内のお金（複数回の場合）' do
      it do
        machine = BendingMachine.new
        machine.input(10)
        machine.input(50)
        machine.input(100)
        machine.input(500)
        machine.input(1000)
        expect(machine.dispAmount).to eq 1660
      end
    end
  end
  # 払い戻しの時は払戻という文字列が入力されるのか？ -> 0とする?
  # 
  describe '払い戻し' do
    it '投入金額が0になる' do
      machine = BendingMachine.new
      machine.input(500)
      machine.output
      expect(machine.dispAmount).to eq 0
    end
    it '釣り銭を出力' do
      machine = BendingMachine.new
      machine.input(500)
      expect(machine.output).to eq 500
    end
  end
end
