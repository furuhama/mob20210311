# frozen_string_literal: true

require_relative 'script'

RSpec.describe do
  describe 'Sample' do
    it { expect(Sample.perfect_answer).to eq 42 }
  end
end
