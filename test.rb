# frozen_string_literal: true

require_relative 'script'

RSpec.describe do
  
  describe 'Vending Machine' do
    let(:machine) { VendingMachine.new() }
    let(:str) { 'hoge' }
    context '想定内のお金' do
      let(:str) { '1000' }
      it 'input' do
        expect{machine.input(str)}.to change{
          machine.sum_value
        }.by(1000)
      end

      it 'return value' do
        expect(machine.input(str)).to eq nil
      end
    end

    context '想定外のお金' do
      let(:str) { '1' }
      it 'input' do
        expect{machine.input(str)}.not_to change{
          machine.sum_value
        }.by(1000)
      end

      it 'return value' do
        expect(machine.input(str)).to eq nil
      end
    end
  end
end
