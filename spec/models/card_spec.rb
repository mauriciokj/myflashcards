require 'rails_helper'

RSpec.describe Card, type: :model do
  context 'valid_answer' do

    let(:card) { build(:card, answer: answer) }

    describe 'when is valid' do
      let(:answer) { 'resposta certa'}
      it "returs true if is a valid answer" do
        expect(card.valid_answer('resposta certa')).to be_truthy
      end
    end
  end
end
