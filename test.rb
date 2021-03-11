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

        }
      end
    end
  end
end
