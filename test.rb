# frozen_string_literal: true

require_relative 'script'

RSpec.describe do
  
  let(:machine) { VendingMachine.new() }
  describe 'VendingMachine#input' do
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
        }
      end

      it 'return value' do
        expect(machine.input(str)).to eq str
      end
    end

    context '払い戻し' do
      let(:str) { '-1' }
      let(:sum) { '1500' }

      before do
        machine.input('1000')
        machine.input('500')
      end

      it 'return value' do
        expect(machine.input(str)).to eq sum
      end

      it 'reset sum value' do
        machine.input(str)
        expect(machine.sum_value).to eq 0
      end
    end
  end

  describe 'VendingMachine#sum_value' do
    it 'return sum_value' do
      expect(machine.sum_value).to eq 0
    end
  end
end
