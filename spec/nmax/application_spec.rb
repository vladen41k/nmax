require_relative '../spec_helper'

RSpec.describe Nmax::Application do
  let(:file_path) { File.dirname(__FILE__) + '/../fixtures/text.txt' }
  let(:file) { File.open(file_path) }

  context 'when valid params' do
    let(:n) { '7' }

    subject { Nmax::Application.new(file, n).call }

    it 'returned 7 last digits' do
      expect(subject).to eq('9, 949416, 97, 979, 987, 9879, 99')
    end
  end

  context 'when n is negative' do
    let(:n) { '-2' }

    subject { Nmax::Application.new(file, n).call }

    it '.process_numbers outputs an array of integers' do
      expect(subject).to eq('wrong argument')
    end
  end
end
