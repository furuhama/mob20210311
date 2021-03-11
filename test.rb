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

  describe 'VendingMachine#input_juice' do
    let(:juice) { Juice.new(name: 'サイダー', price: 100) }
    it '' do
      expect{machine.input_juice(juice)}.to change {
        machine.juices
      }.to([juice])
    end
  end

  describe 'VendingMachine#juices' do
    let(:coke) { Juice.new(name: 'コーラ', price: 120) }
    it do
      machine.juices.each do |juice|
        expect(juice).to eq coke
      end
    end
  end
end


