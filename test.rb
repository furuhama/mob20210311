# frozen_string_literal: true

require_relative 'script'

RSpec.describe do
  describe 'Sample' do
    it { expect(Sample.perfect_answer).to eq 42 }
  end
  # 硬貨の種類？
  describe 'お金の投入' do
    describe '想定内のお金' do
      it '投入金額がhogehogeになる' do
      end
    end
    describe '想定外のお金' do
      it '投入金額が変わらない' do
      end
    end
  end
  # 払い戻しの時は払戻という文字列が入力されるのか？ -> 0とする?
  # 
  describe '払い戻し' do
    it '投入金額が0になる' do
    end
    it '釣り銭を出力' do
    end
  end
end
